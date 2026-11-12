# Binary asset upload

The repository documentation now describes four downloadable cursor collections. **The four ZIP binaries are intentionally left for the repository maintainer to upload manually.** This change updates documentation and catalog metadata only; it does not upload ZIP files or extracted cursor binaries.

## Upload exactly these four ZIP files

Upload the four archives into the repository's `downloads/` folder:

| # | Exact filename | Size | Contents |
|---:|---|---:|---|
| 1 | `Glow-Cursor-Forge-16-Themes.zip` | 22,131,398 bytes | 16 themes / 240 ANI files / 15 roles per theme |
| 2 | `GlowCursors-5-Themes.zip` | 3,751,130 bytes | 5 themes / 75 ANI files / 15 roles per theme |
| 3 | `NeonPulse-5-Themes.zip` | 4,864,633 bytes | 5 themes / 100 ANI files / 20 roles per theme |
| 4 | `QUIETFORM_Download.zip` | 13,138,925 bytes | 20 families / 360 ANI files / 360 CUR files / 18 cursor types per family |

The QUIETFORM archive uploaded for inspection had SHA-256:

`4d2f06adab5fadf6d5f27ae9233028919a7992058e8e4381be741ce4cf357689`

The archive names above are the names that should appear in GitHub. Keep the ZIP files intact. Do not extract and upload all ANI/CUR files for this four-archive task.

## Quickest method: GitHub web upload

1. Open the repository's [downloads upload page](https://github.com/kosandra0/Animated-Cursor-Library/upload/main/downloads).
2. Drag all four ZIP files into the upload area.
3. Check that GitHub shows these exact four filenames:
   - `Glow-Cursor-Forge-16-Themes.zip`
   - `GlowCursors-5-Themes.zip`
   - `NeonPulse-5-Themes.zip`
   - `QUIETFORM_Download.zip`
4. Commit the upload to the `main` branch.
5. Return to [the downloads folder](https://github.com/kosandra0/Animated-Cursor-Library/tree/main/downloads) and confirm that all four ZIP files are visible.

After the upload commit, the relative archive links in the root README and `downloads/README.md` will resolve.

## Upload scope

For this task, upload **only the four ZIP archives**. The README, collection guide, catalog metadata, upload instructions, status note, provenance note, cursor-role reference and changelog have already been prepared in the repository.

Do not upload the Arena website project ZIP as a cursor collection. It is a separate website/source project and is not one of the four cursor-pack archives listed above.

## Integrity note

The first three archive sizes are retained from the repository's original upload inventory. The QUIETFORM size and SHA-256 were measured from the ZIP supplied for this update. If you rename or recompress an archive before uploading, its size and checksum will change. Keep the exact filenames above so the documented paths match the uploaded files.
