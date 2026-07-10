# eLabFTW Template Repository

Setting up an electronic lab notebook takes time most researchers do not have. Every group ends up solving the same documentation problems independently. This repository is an attempt to do that work together instead.

The aim is a shared collection of eLabFTW templates and reference entries that any lab can download, import, and adapt. Templates are designed to be comprehensive and educational — they document not just what to record but why — and to interlink with each other as a coherent package. Fields that are irrelevant to a particular group can simply be removed or ignored; the templates are a starting point, not a prescription.

Templates are organised according to the [DFG Classification of Scientific Disciplines (2024–2028)](https://www.dfg.de/resource/blob/331950/fachsystematik-2024-2028-en.pdf). Initial contributions from the CRC 1638 INF Team are primarily relevant to Biology/Medicine.

Templates are distributed as `.eln` files ([ELN file format](https://github.com/TheELNConsortium/TheELNFileFormat), a ZIP-based open standard) and can be imported directly into any eLabFTW instance via **Admin panel → Import**.

Templates suffixed with `_SFB1638` were originally developed as part of a template package for SFB 1638 / CRC 1638 at the Biochemistry Centre (BZH), University of Heidelberg, and are released under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/). The package is described in the published user guide ([DOI: 10.5281/zenodo.20605341](https://doi.org/10.5281/zenodo.20605341)).

Unless otherwise stated, templates in this repository are released under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).

---

## Comparing versions and reviewing changes: the ELN Metadata Diff Viewer

Because `.eln` files are ZIP archives, GitHub cannot show a readable diff of what changed inside them. 
The **ELN Metadata Diff Viewer** solves this: paste a pull request URL, and it extracts the metadata from both versions of the `.eln` file and shows exactly what changed — with the option to mask UUIDs and dates that eLabFTW regenerates on every export and that are not real changes.

> **ELN Metadata Diff Viewer:** https://achimw.codeberg.page/eln-metadata-diff/

This tool is central to how feedback works in this repository: when someone proposes a modification to an existing template via a pull request, maintainers and other contributors can use the diff viewer to review the actual content changes without having to import the file into eLabFTW first.

---

## Editing and previewing the template body (HTML)
 
eLabFTW template bodies are written in HTML. When you export a `.eln` file, the body HTML is stored as an escaped JSON string inside `ro-crate-metadata.json` (e.g. `"` becomes `\"`, `—` becomes `\u2014`), so pasting it directly into an HTML editor won't render correctly.
 
To preview or edit the body HTML outside of eLabFTW:
 
1. Get the body HTML — either open the `.eln` file's `ro-crate-metadata.json` directly, or use the [ELN Metadata Diff Viewer](#comparing-versions-and-reviewing-changes-the-eln-metadata-diff-viewer), and search for `"text": "` to locate the relevant entry's body.
2. Copy the value of that `text` field.

> **Note:** only use this workflow with template bodies intended for public distribution. Do not paste content from entries containing unpublished, personal, or otherwise sensitive data into third-party web tools.

3. Unescape it — e.g. via [jsonlint.com/json-unescape](https://jsonlint.com/json-unescape) — to convert it back to plain HTML.
4. Paste the unescaped HTML into the [W3Schools TryIt HTML editor](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_intro) to see it rendered instantly, without any local setup.
This is useful for, e.g., comparing changes to the body HTML without importing the file into your eLabFTW instance.

---

## Why a GitHub repository, and how it relates to eln.community

[eln.community](https://eln.community/) is Deltablot's template sharing hub for eLabFTW. All templates in this repository could also be shared there, and we encourage that.

This repository exists in parallel because some users may want a system that makes it easier to return feedback and have it integrated. On eln.community, templates can be downloaded and used but there is currently no straightforward way to propose a modification to someone else's entry. Here, that workflow is built in: if you improve a template — say you add a missing field to an antibody template that turns out to be useful for your whole community — you can export the modified `.eln` file from eLabFTW and open a pull request. Others can review the change using the ELN Metadata Diff Viewer before it is merged. Whether this parallel approach proves useful enough to sustain remains to be seen; for now both platforms can coexist.

---

## Repository structure

```
elabftw-templates/
│
├── general/                          # Templates not specific to a scientific discipline
│   ├── general_Experiments/          # e.g. meta-analysis, ISA load-fields style-template
│   └── general_Resources/            # e.g. landing pages, instruments, ISA structure entries
│
├── 1_Humanities_and_Social_Sciences/
│   ├── 1_Experiments/
│   └── 1_Resources/
│
├── 2_Life_Sciences/
│   ├── 2_Experiments/                # e.g. molecular cloning
│   └── 2_Resources/                  # e.g. Mammalian Cells, Primary Antibodies, Expression Vector Overview
│
├── 3_Natural_Sciences/
│   ├── 3_Experiments/
│   └── 3_Resources/
│
└── 4_Engineering_Sciences/
    ├── 4_Experiments/
    └── 4_Resources/
```

Each of the four scientific disciplines (matching the top level of the DFG classification) contains exactly two subfolders: `X_Experiments` for experiment-type templates and `X_Resources` for resource-type templates (biological materials, reagents, etc.). There is no further folder nesting by subject area — that level of detail is encoded in the filename prefix instead, described below.

---

## File naming convention

Since templates for an entire discipline (e.g. all of Life Sciences) sit together in one flat `2_Experiments` / `2_Resources` folder, the filename prefix is what lets people filter for the subject area they're interested in. Prefix your filename with the DFG number at whichever level fits:

```
# Subject area level — for content specific to one Review Board
2.11_biochemistry_protein_expression.eln
2.21_microbiology_growth_curve.eln

# Research area level — for content that spans several related subject areas but still belongs clearly to one DFG research area
2.2_regulatory_approval_documentation.eln

# Discipline level — for techniques or content used across the whole discipline
2_mammalian_cells.eln
```

`2.11`, `2.21`, etc. are the Subject Area codes from the DFG classification (e.g. 2.11 = Basic Research in Biology and Medicine, 2.21 = Microbiology, Virology and Immunology) — use this level whenever your template fits one subject area.

`2.1`, `2.2`, `2.3` represent the DFG Research Area codes (21, 22, 23 — e.g. 22 = Medicine) with a dot inserted for readability and sort order. Use this level only when the content genuinely belongs to one research area but doesn't fit a single subject area — typically field-specific rather than technique-specific content. A template for a widely used technique (mammalian cell culture, flow cytometry, Western blotting) likely applies across multiple research areas and belongs at the discipline level instead.

`2_` on its own marks a template relevant across the whole discipline. Use it for techniques and workflows that cut across research areas and subject areas alike.

The full DFG numbering is listed in the [DFG Classification of Scientific Disciplines (2024–2028)](https://www.dfg.de/resource/blob/331950/fachsystematik-2024-2028-en.pdf). For a browsable (non-numbered) overview, see [re3data — Browse by subject](https://www.re3data.org/browse/by-subject/); note that re3data's categories don't map directly onto the DFG numbering, so use the DFG PDF as the authoritative source for the prefix.

---

## How to download and use a template

1. Navigate to the folder for your discipline (`general`, `1_...`, `2_...`, `3_...`, or `4_...`), then into `_Experiments` or `_Resources`.
2. Use the filename prefix (review board code, e.g. `2.11_`) to find templates relevant to your field — see [File naming convention](#file-naming-convention) above.
3. Click the `.eln` file you want.
4. Click **Download raw file** (the download icon on the right).
5. In your eLabFTW instance, go to **Admin panel → Import** and upload the `.eln` file.

> **Note on categories:** Importing an `.eln` file may create a new category in your instance if the category name in the file does not match an existing one. Check and adjust the category assignment after import if needed.

---

## How to contribute

Contributions require a GitHub account. There are two types:

**Adding a new template** — export your template from eLabFTW as an `.eln` file, remove any institute-specific IDs or personal data (replace with descriptive placeholders, e.g. `REPLACE_WITH_ENTRY_ID`), fork this repository, upload the file to the appropriate folder, and open a pull request.

**Suggesting a modification to an existing template** — import the existing `.eln` file into your eLabFTW instance, make your changes there, export the modified file with the same filename, and propose it back via a pull request. The pull request can then be reviewed using the [ELN Metadata Diff Viewer](#comparing-versions-and-reviewing-changes-the-eln-diff-viewer).

For the full step-by-step workflow including common mistakes and a pre-submission checklist, see [CONTRIBUTING.md](CONTRIBUTING.md).

**⚠️ Licensing requirement**

By submitting a pull request, you agree to license your contribution under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).

---

## Related resources

- **[eln.community](https://eln.community/)** — Deltablot's template sharing hub for eLabFTW
- **[ELN Metadata Diff Viewer](https://achimw.codeberg.page/eln-metadata-diff/)** — compare `.eln` file versions across a pull request
- **[eLabFTW documentation](https://doc.elabftw.net/)**
- **[ELN file format specification](https://github.com/TheELNConsortium/TheELNFileFormat)**
- **[DFG subject area classification (2024–2028)](https://www.dfg.de/resource/blob/331950/fachsystematik-2024-2028-en.pdf)** — authoritative source for filename prefix numbering
- **[re3data — Browse by subject](https://www.re3data.org/browse/by-subject/)** — browsable subject overview (does not use DFG numbering)

---

## Repository

This repository was initiated by the INF team of SFB 1638 / CRC 1638 at the Biochemistry Centre (BZH), Heidelberg University. The repository infrastructure and documentation were developed by Neele Drobnitzky ([ORCID iD: 0000-0002-3181-941X](https://orcid.org/0000-0002-3181-941X)) and Achim Winandi ([ORCID iD: 0000-0003-4800-7925](https://orcid.org/0000-0003-4800-7925)). Achim Winandi also developed the [ELN Metadata Diff Viewer](https://achimw.codeberg.page/eln-metadata-diff/).

The initial `_SFB1638` template collection was created by Neele Drobnitzky and is described in the accompanying user guide ([DOI: 10.5281/zenodo.20605341](https://doi.org/10.5281/zenodo.20605341)).

We gratefully acknowledge Caroline Kolenda ([ORCID iD: 0009-0004-0860-6258](https://orcid.org/0009-0004-0860-6258)) and the [Meinecke Lab](https://bzh.db-engine.de/group/81/meinecke), led by Michael Meinecke ([ORCID iD: 0000-0003-1414-6951](https://orcid.org/0000-0003-1414-6951)), for contributing feature ideas, testing the templates, and providing valuable feedback throughout their development.
