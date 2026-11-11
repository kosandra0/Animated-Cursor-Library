# Binary asset upload

The public GitHub repository exists, but this GitHub connection cannot upload binary files from the local conversation workspace. The browser's release upload also could not access those local files, so no empty release was published.

## Three ZIP archives to add

Upload these files from the extracted local bundle's `downloads/` folder:

| File | Size | Collection |
|---|---:|---|
| `Glow-Cursor-Forge-16-Themes.zip` | 22,131,398 bytes | 16 themes / 240 ANI files |
| `GlowCursors-5-Themes.zip` | 3,751,130 bytes | 5 themes / 75 ANI files |
| `NeonPulse-5-Themes.zip` | 4,864,633 bytes | 5 themes / 100 ANI files |

The original RAR source files are retained under `source-archives/` in the local bundle.

## Fastest method: GitHub web upload

1. Open the repository's [downloads upload page](https://github.com/kosandra0/Animated-Cursor-Library/upload/main/downloads).
2. Drag the three ZIP files from your extracted `Animated-Cursor-Library/downloads/` folder into the upload area.
3. Wait until GitHub lists all three files.
4. Commit the upload to `main`.

After the commit, the relative download links in `README.md` and `downloads/README.md` will resolve.

## Full method: sync every asset

To upload the complete library, not just the ZIP packages, run `SYNC-TO-GITHUB.bat` in the extracted local repository bundle. This pushes the 415 ANI files, three ZIP packages, previews, RAR originals, inventories, and documentation to the existing repository. Read [PUBLISH-STATUS.md](PUBLISH-STATUS.md) first.

## Integrity reference

The three archives in the local bundle were checked with ZIP CRC validation. Their SHA-256 hashes are recorded in the local `catalog/SHA256SUMS.txt`. The upload itself should be followed by a GitHub tree check to confirm the three `.zip` files exist under `downloads/`.
