# GitHub Web: Fork and pull request workflow for eLabFTW `.eln` files

This workflow is designed for external contributors who:

- Do not have permission to change the original repository directly
- Use only the GitHub website
- Work with an `.eln` file exported from eLabFTW
- Import the `.eln` file into an eLabFTW instance
- Modify the content in eLabFTW
- Export and upload the modified `.eln` file through GitHub

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

---

## Overview

```
Original repository: main branch
        │
        │ Fork
        ▼
Contributor's fork: main branch
        │
        │ Download the .eln file
        ▼
Import the file into eLabFTW
        │
        │ Modify and export
        ▼
Upload the modified .eln file to a new branch
        │
        ▼
Open a pull request against the original main branch
        │
        ▼
Review and merge
```

---

## 1. Create a fork from the main branch

The contribution must be based on the main branch of the original repository.

1. Sign in to GitHub.
2. Open the original repository.
3. Use the branch selector above the file list to confirm that **main** is selected.
4. Select **Fork** near the upper-right corner.
5. Select your GitHub account as the owner of the fork.
6. Keep the suggested repository name.
7. Leave **Copy the main branch only** selected, when this option is displayed.
8. Select **Create fork**.

GitHub creates a personal copy of the repository under your account.

For example:

```
Original repository:  github.com/project-owner/project
Your fork:            github.com/your-name/project
```

After creating the fork, confirm that the selected branch is **main**.

---

## 2. Synchronize the fork's main branch

Before beginning a contribution, make sure the main branch of your fork contains the latest version from the original repository.

1. Open your fork.
2. Use the branch selector to select **main**.
3. Select **Sync fork** above the list of files.
4. Review the information displayed by GitHub.
5. Select **Update branch**.

If GitHub reports a conflict, stop and contact the repository maintainer before replacing or deleting files.

---

## 3. Download the `.eln` file

Always download the current file from the synchronized main branch of your fork.

1. Open your fork.
2. Confirm that the selected branch is **main**.
3. Navigate to the folder containing the `.eln` file.
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

Use an eLabFTW instance where you are authorized to import and modify the content.

1. Sign in to the eLabFTW instance.
2. Open the import function provided by the instance.
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

## 5. Modify the content in eLabFTW

Make the required changes using the eLabFTW interface. Depending on the contribution, this may include:

- Correcting text
- Updating experimental instructions
- Changing metadata
- Adding or replacing attachments
- Correcting links
- Updating tags
- Revising steps or procedures
- Correcting formatting

Review the modified content carefully before exporting it. Confirm that:

- Only the intended content was changed
- No confidential information was added
- No unrelated experiments or resources were included
- Required attachments are still present
- The modified content can be opened correctly in eLabFTW

---

## 6. Export the modified content as an `.eln` file

After completing the changes, export the modified content from eLabFTW in `.eln` format.

1. Open the modified experiment or resource.
2. Select the appropriate export function.
3. Choose the eLabFTW `.eln` or ELN archive export format.
4. Export the modified content.
5. Save the exported file to your computer.

The exported file must retain the `.eln` extension.

When possible, give the exported file exactly the same filename as the file downloaded from GitHub. eLabFTW or your browser may create a filename such as `example-experiment (1).eln` — rename it to the exact original filename before uploading.

Do not change the `.eln` extension to `.zip`, even though the `.eln` file is internally based on a ZIP archive.

---

## 7. Upload the modified `.eln` file

The exported file must be uploaded to the same folder and with the same filename as the original file. Otherwise, GitHub may add a second file instead of replacing the existing file.

1. Return to your fork on GitHub.
2. Confirm that you are viewing the **main** branch.
3. Navigate to the folder containing the original `.eln` file.
4. Select **Add file**.
5. Select **Upload files**.
6. Drag the modified `.eln` file into the upload area, or select **Choose your files**.
7. Confirm that the filename exactly matches the original filename.
8. Confirm that you are uploading it to the original folder.

---

## 8. Create a separate branch for the change

Do not commit the modified `.eln` file directly to the fork's main branch.

On the upload page:

1. Enter a short description in the **Commit message** field.
2. Select **Create a new branch for this commit and start a pull request**.
3. Enter a descriptive branch name.
4. Select **Propose changes**.

Example branch names: `update-example-experiment`, `correct-sample-metadata`, `revise-eln-procedure`

Example commit messages: `Update example experiment`, `Correct metadata in ELN template`, `Revise sample preparation procedure`

GitHub saves the uploaded file as a commit on the new branch.

---

## 9. Open a pull request against main

A pull request asks the maintainers of the original repository to review and accept the modified `.eln` file.

After uploading the file, look for a banner offering **Compare & pull request** and select it.

If the banner does not appear:

1. Open the original repository.
2. Select **Pull requests**.
3. Select **New pull request**.
4. Select **Compare across forks**.
5. Set the base repository to the original repository, base branch to **main**, head fork to your fork, and compare branch to your contribution branch.

Before creating the pull request, confirm that:

- The base repository is the original repository
- The base branch is **main**
- The head repository is your fork
- The compare branch is your contribution branch
- The correct `.eln` file is included
- No unrelated files are included

---

## 10. Write the pull request description

Use a clear title that summarizes the change, for example: `Update the sample preparation ELN template`

In the description, explain:

- Which `.eln` file was changed
- What was changed in eLabFTW
- Why the change is needed
- Which eLabFTW instance or version was used, when relevant
- How the exported file was checked
- Whether the contribution relates to an existing issue

Example:

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

Select **Create pull request** when the contribution is ready for review. Use **Create draft pull request** when the work is incomplete.

---

## 11. Review limitations for `.eln` files

An `.eln` file is an archive rather than a normal text file. GitHub may therefore treat it as a binary file and may not display a detailed line-by-line comparison of the changes — the pull request may show only that the file was replaced.

For this reason, the pull request description must clearly state what was changed. Maintainers may need to download the proposed `.eln` file, import it into a test eLabFTW instance, and compare it with the current version manually.

---

## 12. Allow maintainer edits

When available, select **Allow edits from maintainers**. This allows project maintainers to make corrections on the pull-request branch. Because `.eln` files normally need to be edited through eLabFTW, maintainers may instead ask the contributor to make the requested corrections and upload another exported version.

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

Example commit message: `Address review comments`

The existing pull request updates automatically. Do not create a second pull request for corrections to the same contribution.

---

## 14. Maintainer review

Because the `.eln` file is an archive, the maintainer should not rely only on GitHub's file comparison. The maintainer should:

1. Read the pull request title and description.
2. Confirm the pull request targets the **main** branch.
3. Confirm the correct `.eln` file was replaced and no unrelated files were added.
4. Download the proposed `.eln` file and import it into a test eLabFTW instance.
5. Check the experiment or resource content, metadata, attachments, links and formatting.
6. Confirm the file imports without errors.
7. Request corrections when necessary, then approve and merge when ready.
8. Delete the contribution branch when appropriate.

---

## 15. Synchronize after the pull request is merged

After the maintainer merges the pull request:

1. Open your fork.
2. Use the branch selector to select **main**.
3. Select **Sync fork** → **Update branch**.

The old contribution branch can then be deleted.

---

## Pre-submission checklist

- [ ] I created my fork from the original repository's **main** branch.
- [ ] I synchronized the main branch of my fork before starting.
- [ ] I downloaded the latest `.eln` file from **main**.
- [ ] I imported the `.eln` file into an authorized eLabFTW instance.
- [ ] I made the changes in eLabFTW.
- [ ] I exported the modified content in `.eln` format.
- [ ] I kept the original filename and `.eln` extension.
- [ ] I did not unzip or manually modify the archive.
- [ ] I uploaded the file to the correct repository folder.
- [ ] I created a separate contribution branch.
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

**Uploading to the wrong folder** — GitHub adds another file instead of replacing the original. Navigate to the original file's folder before selecting Upload files.

**Uploading directly to main** — select **Create a new branch for this commit and start a pull request** instead.

**Expecting a text comparison on GitHub** — GitHub may not display the internal changes in an `.eln` archive. Explain the changes clearly in the pull request description.

**Opening the pull request against the wrong branch** — confirm the base repository is the original repository and the base branch is **main**.

**Creating a second pull request after receiving feedback** — upload corrections to the existing pull request branch instead.
