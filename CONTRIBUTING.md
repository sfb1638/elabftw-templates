# GitHub Web: Fork and pull request workflow for eLabFTW `.eln` files

This workflow is designed for external contributors who:

- Do not have permission to change the original repository directly
- Use only the GitHub website
- Work with an `.eln` file exported from eLabFTW
- Import the `.eln` file into an eLabFTW instance
- Modify the content in eLabFTW
- Export and upload the modified `.eln` file through GitHub

It also covers contributors who want to add a brand-new template to the repository rather than change an existing file.

No Git command line or local Git installation is required.

---

## About the `.eln` file

The file used in this workflow has the `.eln` extension. It is an eLabFTW ELN export packaged as a RO-Crate ZIP archive.

The contributor does not edit the `.eln` file directly with a text editor or archive application. Instead, the contributor:

1. Downloads the `.eln` file from GitHub.
2. Imports it into an eLabFTW instance.
3. Modifies the imported content in eLabFTW.
4. Exports the modified content as a new `.eln` file.
5. Uploads the exported `.eln` file to GitHub.

When adding a new template, there is nothing to download or import first. The contributor builds the template in eLabFTW, exports it as an `.eln` file, and uploads that file to the correct folder.

---

## Two kinds of contribution

This workflow covers two cases:

- **Editing an existing file.** You download an `.eln` file from the repository, import it into eLabFTW, change it, and export it again under the same filename.
- **Adding a new template.** You build a new template in eLabFTW, export it as an `.eln` file, and upload it to the correct folder under a new filename.

Both cases share the same fork, upload, branch and pull request steps. They differ only at the start. An edit begins with a download and import (sections 3 and 4). A new template begins with you creating it in eLabFTW. The notes below mark where the steps differ.

---

## Overview

```
Original repository: main branch
        │
        │ Fork, then sync your fork's main branch
        ▼
Contributor's fork: main branch
        │
        ├──────────────────────────────┐
        │                              │
   Edit an existing file          Add a new template
        │                              │
        ▼                              ▼
Download the .eln file         Create the template in eLabFTW
        │                              │
        ▼                              ▼
Import into eLabFTW            Export as a new .eln file
        │                              │
        ▼                              │
Modify and export                      │
        │                              │
        └───────────────┬──────────────┘
                        │
                        ▼
  Navigate to the correct folder in your fork and upload the file
                        │
                        ▼
   New template only: add it to TEMPLATES.md on the same branch
                        │
                        ▼
  Commit to a new branch, then open a pull request against main
                        │
                        ▼
                 Review and merge
```

---

## 1. Create a fork from the main branch

The contribution must be based on the main branch of the original repository.

1. Sign in to GitHub.
2. Open the original [eLabFTW Template Repository][elabftw-template-repository].
3. Select **Fork** near the upper-right corner.
4. Select your GitHub account as the owner of the fork.
5. Keep the suggested repository name.
6. Leave **Copy the main branch only** selected, when this option is displayed.
7. Select **Create fork**.

GitHub creates a personal copy of the repository under your account.

For example:

```
Original repository:  github.com/sfb1638/elabftw-templates
Your fork:            github.com/your-name/elabftw-templates
```

Learn more about [Forking a repository (GitHub Docs)](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo).

---

## 2. Synchronize the fork's main branch

Before beginning a contribution, make sure the main branch of your fork contains the latest version from the original repository.

1. Open your fork.
2. Use the branch selector to select **main**.
3. Select **Sync fork** above the list of files.
4. Review the information displayed by GitHub.
5. Select **Update branch** (if your fork is behind the original repository).

If GitHub reports a conflict, stop and contact the repository maintainer before replacing or deleting files.

Learn more about [Syncing a fork (GitHub Docs)](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork#syncing-a-fork-branch-from-the-web-ui).

---

## 3. Download the `.eln` file

> **New template:** skip this section. There is no existing file to download. Go to section 5 and build the template in eLabFTW.

Always download the current file from the synchronized main branch of your fork.

1. Open your fork.
2. Confirm that the selected branch is **main**.
3. Navigate to the folder containing the `.eln` file (e.g. [2_Life_Sciences/2_Resources](2_Life_Sciences/2_Resources)).
4. Select the `.eln` filename.
5. Select the download button or **Download raw file**.
6. Save the file to your computer.

Keep the original filename and `.eln` extension.

| | Example |
|---|---|
| ✅ Correct | `example-experiment.eln` |
| ❌ Incorrect | `example-experiment.zip` |
| ❌ Incorrect | `example-experiment (1).eln` |
| ❌ Incorrect | `example-experiment.eln.zip` |

Do not extract, unzip or manually edit the contents of the `.eln` file.

---

## 4. Import the `.eln` file into eLabFTW

> **New template:** skip this section. There is nothing to import. Go to section 5 and build the template in eLabFTW.

Use an eLabFTW instance where you are authorized to import and modify the content.

1. Sign in to the eLabFTW instance.
2. Open the import function located under your account in the top right corner.
3. Select the downloaded `.eln` file.
4. Import the file.
5. Confirm that the expected experiment, resource or associated content was imported correctly.

The exact menu names may vary depending on the eLabFTW version and the configuration of the instance.

Before making changes, check that:

- The correct `.eln` file was imported
- The expected experiment or resource is present
- Attachments and metadata are available
- You have permission to modify the imported content

Do not upload confidential or sensitive information to an eLabFTW instance unless that instance is approved for the information concerned.

---

## 5. Modify or create the content in eLabFTW

**Editing an existing file:** make the required changes to the imported content using the eLabFTW interface. Depending on the contribution, this may include:

- Correcting text
- Updating experimental instructions
- Changing metadata
- Adding or replacing attachments
- Correcting links
- Updating tags
- Revising steps or procedures
- Correcting formatting

**Adding a new template:** build the template from scratch in eLabFTW as a resource or experiment template, following the same conventions as the templates already in the repository (field names, structure, controlled vocabularies, footer, and any delete-line divider the repository uses).

Review the content carefully before exporting it. Confirm that:

- Only the intended content was changed, or the new template is complete
- No confidential information was added
- No unrelated experiments or resources were included
- Required attachments are present
- The content can be opened correctly in eLabFTW

---

## 6. Export the content as an `.eln` file

Export the content from eLabFTW in `.eln` format.

1. Open the experiment, resource or template.
2. Select Export/Download directly below the resource title.
3. Choose the ELN archive export format.
4. Save the exported file to your computer.

The exported file must retain the `.eln` extension. Do not change the extension to `.zip`, even though the `.eln` file is internally based on a ZIP archive.

**Filename for an edited file:** give the exported file exactly the same filename as the file you downloaded from GitHub. eLabFTW or your browser may create a filename such as `2026-07-13-133431-export.eln`. Rename it to the exact original filename before uploading.

**Filename for a new template:** choose a descriptive filename according to the file-naming conventions laid out in the [README](./README.md#file-naming-convention) (prefix according to DFG disicipline, research area, or subject area; use underscores `_` instead of spaces). Confirm the name is not already used in the folder where the template belongs, so your upload does not overwrite an existing file.

---

## 7. Upload the `.eln` file

How you name and place the file depends on whether you are replacing an existing file or adding a new one.

- **Edited file:** upload it to the same folder and with the same filename as the original. Otherwise GitHub adds a second file instead of replacing the existing one.
- **New template:** upload it to the folder where that type of template belongs, with a new filename that does not already exist in that folder.

In both cases, **navigate to the correct folder in your fork before you upload.** GitHub places the file in whichever folder you are viewing when you select **Add file**, so an upload started from the wrong folder puts the file in the wrong place.

Do not commit the `.eln` file directly to the fork's main branch. Instead, create a separate branch for the change.

1. Return to your fork on GitHub.
2. Confirm that you are viewing the **main** branch.
3. **Navigate to the folder where the file belongs.** For an edited file this is the folder that contains the original. For a new template this is the folder that matches its type or DFG discipline classification in the repository.
4. Select **Add file** near the upper-right corner.
5. Select **Upload files**.
6. Drag the `.eln` file into the upload area, or select **Choose your files**.
7. Confirm the filename. For an edited file it must match the original exactly. For a new template it must be descriptive and not already in use in that folder.
8. Confirm that the folder shown above the upload area is the folder you intend.
9. Enter a short description in the **Commit message** field.
10. Select **Create a new branch for this commit and start a pull request**.
11. Enter a descriptive branch name.
12. Select **Propose changes**.

Example branch names:

- Editing an existing file: `update-example-experiment`, `correct-sample-metadata`, `revise-eln-procedure`
- Adding a new template: `add-microscopy-metadata-template`, `add-confocal-imaging-experiment-template`, `add-flow-cytometry-resource-template`

Example commit messages:

- Editing an existing file: `Update example experiment`, `Correct metadata in ELN template`, `Revise sample preparation procedure`
- Adding a new template: `Add microscopy metadata experiment template`, `Add confocal imaging experiment template`

GitHub saves the uploaded file as a commit on the new branch.

---

## 8. Add your template to the Template Catalog

> **Editing an existing file:** skip this section. The catalog entry for the file already exists. Go to section 9 and open the pull request.

Before opening the pull request, add a row for your new template to [`TEMPLATES.md`](TEMPLATES.md) on the same contribution branch. This keeps the catalog entry and the `.eln` file in the same pull request, so a maintainer can review both together.

1. Return to your fork on GitHub.
2. Confirm you are viewing your contribution branch, not main. The branch selector in the upper left should show the branch name you created in step 7.
3. Navigate to [`TEMPLATES.md`](TEMPLATES.md) in the root of the repository.
4. Select the pencil icon (**Edit this file**) in the upper-right corner.
5. Find the table matching the folder your template belongs to (for example `2_Life_Sciences/2_Resources`), the same folder you uploaded the `.eln` file into in step 7.
6. Within that table, find the subsection that best matches your template's function (for example Organisms, Stocks, Antibodies, Navigation & getting started).
7. Add a new row, matching the format of the existing rows:

   ```markdown
   | `your-template-filename.eln` | One-sentence description of what the template records or links to. |
   ```

8. Keep the abstract short: one sentence stating what the template records, and, if relevant, which other templates it links to.
9. If no existing subsection fits, add the row under the closest one and say so in the pull request description, so maintainers can decide whether a new subsection is needed.
10. Scroll to the bottom of the page.
11. Enter a short commit message, for example `Add [template name] to catalog`.
12. Confirm **Commit directly to the [your-branch-name] branch** is selected, not "Create a new branch."
13. Select **Commit changes**.

This adds a second commit to the same branch you created in step 7, so both files travel together in the same pull request.

---

## 9. Open a pull request against main

A pull request asks the maintainers of the original repository to review and accept the `.eln` file.

After uploading the file, look for a banner offering **Compare & pull request** on the landing page of your fork and select it.

If the banner does not appear:

1. Open the [original repository][elabftw-template-repository].
2. Select **Pull requests**.
3. Select **New pull request**.
4. Select **Compare across forks**.
5. Set the **base repository to** `sfb1638/elabftw-templates` and **base** to `main`.
6. Set the **head repository** to your fork and **compare** to your contribution branch.

Before creating the pull request, confirm that:

- The base repository is the original repository
- The base branch is **main**
- The head repository is your fork
- The compare branch is your contribution branch
- The correct `.eln` file is included
- (New template only) The `TEMPLATES.md` update from section 8 is included
- No unrelated files are included

Learn more about [Creating a pull request form a fork (GitHub Docs)](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork).

---

## 10. Write the pull request description

Use a clear title that summarizes the change, for example `Update the sample preparation ELN template` for an edit, or `Add a microscopy metadata experiment template` for a new template.

In the description, explain:

- Which `.eln` file was changed, or that the file is a new template
- What was changed in eLabFTW, or what the new template is for
- Why the change or new template is needed
- Which eLabFTW instance or version was used, when relevant
- How the exported file was checked
- Whether the contribution relates to an existing issue

Example for an edit:

```markdown
## What changed

Updated `templates/sample-preparation.eln`.

The file was imported into eLabFTW and the following changes were made:

- Corrected the sample-volume instructions
- Updated the material metadata
- Replaced an outdated attachment

## Why

The previous procedure contained an incorrect volume and referenced an outdated form.

## Verification

The modified content was exported from eLabFTW as an `.eln` file and
successfully imported into a clean eLabFTW workspace.

Fixes #123
```

Example for a new template:

```markdown
## What changed

Added `templates/microscopy-experiment-metadata.eln`.

This is a new experiment template for recording microscopy acquisition
metadata. It was built in eLabFTW and exported as an `.eln` file.

Also added a row for this template to TEMPLATES.md under
2_Life_Sciences/2_Resources.

## Why

The repository did not yet have a template for microscopy acquisition
metadata, which several groups need for consistent documentation.

## Verification

The template was exported from eLabFTW as an `.eln` file and
successfully imported into a clean eLabFTW workspace.
```

Select **Create pull request** when the contribution is ready for review. Use **Create draft pull request** when the work is incomplete.

---

## 11. Review limitations for `.eln` files

An `.eln` file is an archive rather than a normal text file. GitHub therefore treats it as a binary file and does not display a detailed line-by-line comparison of the changes. For an edit, the pull request may show only that the file was replaced. For a new template, it may show only that a file was added.

For this reason, the pull request description must clearly state what was changed or added. Maintainers may need to download the proposed `.eln` file, import it into a test eLabFTW instance, and compare it with the current version or review it on its own. The [ELN Metadata Diff Viewer](https://achimw.codeberg.page/eln-metadata-diff/) can help you review the changes directly from the pull request without having to import the file into eLabFTW.

---

## 12. Allow maintainer edits

When available, select **Allow edits from maintainers** for the pull request. This allows project maintainers to make corrections on the pull-request branch. Because `.eln` files normally need to be edited through eLabFTW, maintainers may instead ask the contributor to make the requested corrections and upload another exported version.

---

## 13. Respond to review comments

A maintainer may approve, request clarification, ask for corrections, or close the pull request. Respond to questions in the pull request conversation.

When another revision is required:

1. Open your fork and select the branch used by the pull request.
2. Navigate to the folder containing the `.eln` file.
3. Download the current `.eln` file from that branch.
4. Import it into eLabFTW, make the requested changes, and export it again.
5. Ensure the exported file uses the original filename.
6. Return to the same folder and branch on GitHub.
7. Select **Add file → Upload files** and upload the revised `.eln` file.
8. Commit the change directly to the existing pull request branch.
9. (New template only) If the review comments require a wording change to the catalog abstract, repeat section 8 on the same branch and commit the updated `TEMPLATES.md` row as well.

Example commit message: `Address review comments`

The existing pull request updates automatically. Do not create a second pull request for corrections to the same contribution.

---

## 14. Maintainer review

Because the `.eln` file is a ZIP archive, maintainers should not rely on GitHub's file comparison. The [ELN Metadata Diff Viewer](https://achimw.codeberg.page/eln-metadata-diff/) can provide an overview of changes to the metadata. Maintainers should also:

1. Read the pull request title and description.
2. Confirm the pull request targets the **main** branch.
3. Confirm the correct `.eln` file was replaced, or that a new template was added to the correct folder, and that no unrelated files were added.
4. (New template only) Confirm `TEMPLATES.md` includes an accurate one-sentence abstract for the new file, in the correct table and subsection.
5. Download the proposed `.eln` file and import it into a test eLabFTW instance.
6. Check the experiment, resource or template content, metadata, attachments, links and formatting.
7. Confirm the file imports without errors.
8. Request corrections when necessary, then approve and merge when ready.

---

## 15. Synchronize after the pull request is merged

After the maintainer merges the pull request:

1. Open your fork.
2. Use the branch selector to select **main**.
3. Select **Sync fork** → **Update branch**.

The old contribution branch can then be deleted.

---

## Pre-submission checklist

For a new template, skip the download and import items. Confirm instead that you created and exported the template in eLabFTW and placed it in the correct folder under a new filename.

- [ ] I created my fork from the original repository's **main** branch.
- [ ] I synchronized the main branch of my fork before starting.
- [ ] (Edit only) I downloaded the latest `.eln` file from **main**.
- [ ] (Edit only) I imported the `.eln` file into an authorized eLabFTW instance.
- [ ] I made the changes in eLabFTW, or built the new template in eLabFTW.
- [ ] I exported the content in `.eln` format.
- [ ] (Edit only) I kept the original filename and `.eln` extension.
- [ ] (New template only) I gave the file a descriptive filename that is not already used in the target folder.
- [ ] I did not unzip or manually modify the archive.
- [ ] I navigated to the correct folder in my fork before uploading.
- [ ] I created a separate contribution branch.
- [ ] (New template only) I added the corresponding row in `TEMPLATES.md`, on the same branch, in the correct table and subsection.
- [ ] My pull request targets the original repository's **main** branch.
- [ ] I described the changes clearly in the pull request.
- [ ] I did not include confidential or unrelated information.
- [ ] I confirmed that the exported `.eln` file can be imported into eLabFTW.

---

## Common beginner mistakes

**Working from a branch other than main** — the contribution may be based on an outdated version. Before downloading the file, confirm the selected branch is **main**.

**Renaming the file to `.zip`** — keep the filename ending in `.eln`.

**Unzipping and editing the file manually** — manually changing files inside the archive may damage its structure. Import into eLabFTW, make changes there, and export again.

**Uploading an automatically renamed file** — the browser or eLabFTW may save the export as `example-experiment (1).eln`. Rename it to the exact original filename before uploading.

**Uploading to the wrong folder** — GitHub adds another file instead of replacing the original, or places a new template where it does not belong. Navigate to the correct folder before selecting Upload files.

**Giving a new template a filename that already exists** — GitHub replaces the existing file instead of adding yours. Check the folder first and choose a name that is not already in use.

**Uploading directly to main** — select **Create a new branch for this commit and start a pull request** instead.

**Forgetting to add a new template to `TEMPLATES.md`** — the `.eln` file is merged but stays undiscoverable in the catalog. Add the row in the same branch, before opening the pull request. This does not apply to edits of existing files.

**Editing `TEMPLATES.md` on a different branch than the `.eln` upload** — this opens a second, unrelated pull request instead of adding a commit to the existing one. Confirm the branch selector shows your contribution branch before editing the file.

**Expecting a text comparison on GitHub** — GitHub may not display the internal changes in an `.eln` archive. Explain the changes clearly in the pull request description.

**Opening the pull request against the wrong branch** — confirm the base repository is the original repository and the base branch is **main**.

**Creating a second pull request after receiving feedback** — upload corrections to the existing pull request branch instead.


[elabftw-template-repository]: https://github.com/sfb1638/elabftw-templates
