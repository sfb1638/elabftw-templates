#!/usr/bin/env sh
set -eu

OUTPUT="${1:-_site/data.js}"
TMP_DIR="$(mktemp -d)"
EXTRACT_DIR="$TMP_DIR/extract"
RECORDS_JSONL="$TMP_DIR/records.jsonl"
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

trap 'rm -rf "$TMP_DIR"' EXIT

if ! command -v jq >/dev/null 2>&1; then
    echo "Error: jq is required but not installed." >&2
    exit 1
fi
if ! command -v unzip >/dev/null 2>&1; then
    echo "Error: unzip is required but not installed." >&2
    exit 1
fi

mkdir -p "$(dirname "$OUTPUT")"
: >"$RECORDS_JSONL"

# Loop over all .eln files
find [1-4]_* general -type f -iname '*.eln' -print | while IFS= read -r elnfilepath; do
    echo "$elnfilepath"

    rm -rf "$EXTRACT_DIR"
    mkdir -p "$EXTRACT_DIR"

    if ! unzip -q "$elnfilepath" "*/ro-crate-metadata.json" -d "$EXTRACT_DIR"; then
        echo "Could not extract metadata from $elnfilepath" >&2
        continue
    fi

    metadatafile="$(find "$EXTRACT_DIR" -name ro-crate-metadata.json -type f -maxdepth 2)"

    if [ -z "$metadatafile" ]; then
        echo "No ro-crate-metadata.json found in $elnfilepath" >&2
        continue
    fi

    # Extract metadata with jq and append to JSONL file
    jq \
        --compact-output \
        --arg elnfilepath "$elnfilepath" \
        -f "$SCRIPT_DIR/extract-metadata.jq" \
        "$metadatafile" >>"$RECORDS_JSONL"
done

# Convert JSONL to JS file
{
    printf '%s\n' 'globalThis.TEMPLATE_DATA ='
    jq --compact-output --slurp '.' "$RECORDS_JSONL"
    printf ';\n'
} >"$OUTPUT"
