# Dataset metadata ############################################################
INDEX(.["@graph"][]; ."@id") as $id
| $id["ro-crate-metadata.json"].about["@id"] as $root_id
| (
    $id[$root_id].hasPart[]
    | $id[.["@id"]]
    | {
        genre: (.genre // null),
        name: (.name // null),
        text: (.text // null),
        author: ($id[.author["@id"]] // null),
      }
  ) as $dataset

# eLabFTW extra fields ########################################################
| (
    first(
      .["@graph"][]
      | select(
          .["@type"] == "PropertyValue"
          and .propertyID == "elabftw_metadata"
        )
      | .value
      | fromjson
      | {
          extra_fields: (.extra_fields // null),
          extra_fields_groups: (.elabftw.extra_fields_groups // null),
        }
    ) // {}
  ) as $data

| ($data.extra_fields_groups // []) as $extra_fields_groups

# Build lookup: group_id -> index of group in list
| (
    $extra_fields_groups
    | to_entries
    | map({
        key: (.value.id | tostring),
        value: .key,
      })
    | from_entries
  ) as $lookup_group_id_to_index

# Assign extra_fields to extra_fields_groups;
# create group "unsorted" if an entry has no matching group
| reduce ($data.extra_fields // {} | to_entries[]) as $item (
    {
      groups: ($extra_fields_groups | map(. + {entries: []})),
      unsorted: [],
    };

    # Turn {"key": "NameOne", "value": {...}}
    # into {"key": "NameOne", ...}
    ({key: $item.key} + $item.value) as $entry

    # Get group id of current entry
    | ($entry.group_id | tostring) as $group_id

    | if $lookup_group_id_to_index[$group_id] != null then
        .groups[$lookup_group_id_to_index[$group_id]].entries += [$entry]
      else
        .unsorted += [$entry]
      end
  )

# Keep unsorted if it has an entry, discard otherwise
| (
    if (.unsorted | length) == 0 then
      .groups
    else
      .groups + [
        {
          id: null,
          name: "Unsorted",
          entries: .unsorted,
        }
      ]
    end
  ) as $extra_fields_groups

# Build combined output #######################################################
| {
    author: $dataset.author,
    extra_fields_groups: $extra_fields_groups,
    filepath: $elnfilepath,
    genre: $dataset.genre,
    name: $dataset.name,
    text: $dataset.text,
  }
