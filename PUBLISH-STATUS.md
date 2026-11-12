# Publishing status

**Repository:** https://github.com/kosandra0/Animated-Cursor-Library  
**Default branch:** `main`  
**Documentation update:** 12 November 2026

## Current state

The repository documentation now covers four cursor collections:

1. Glow Cursor Forge — 16 themes / 240 ANI files.
2. GlowCursors — 5 themes / 75 ANI files.
3. Neon Pulse — 5 themes / 100 ANI files.
4. QUIETFORM — 20 themes / 360 ANI files / 360 CUR alternatives.

The documented aggregate inventory is 4 collections, 46 theme folders, 775 animated ANI files and 360 static CUR alternatives. The CUR alternatives are contained in QUIETFORM.

The root README, downloads index, collection guide, cursor-role reference, collection summary, provenance note, changelog, upload instructions and QUIETFORM technical notes have been updated.

## Binary upload is still pending

**The four ZIP archives are not being uploaded by this documentation update.** The repository maintainer will upload the four archive files manually to `downloads/`:

- `Glow-Cursor-Forge-16-Themes.zip`
- `GlowCursors-5-Themes.zip`
- `NeonPulse-5-Themes.zip`
- `QUIETFORM_Download.zip`

Use the [GitHub downloads upload page](https://github.com/kosandra0/Animated-Cursor-Library/upload/main/downloads) and commit the files to `main`. Detailed instructions and exact sizes are in [BINARY-ASSET-UPLOAD.md](BINARY-ASSET-UPLOAD.md).

Until this manual upload is complete, the relative download links shown in the README are planned paths and will not yet download.

## After upload

1. Open [the downloads folder](https://github.com/kosandra0/Animated-Cursor-Library/tree/main/downloads).
2. Confirm that all four ZIPs are listed with the exact filenames above.
3. Open each file entry and confirm GitHub displays its archive.
4. Check the root README and downloads index to confirm the relative links resolve.

## Scope and limitations

This update commits UTF-8 documentation and JSON metadata only. It does not add the ZIP binaries, extract or upload individual ANI/CUR assets, or publish a GitHub release.

QUIETFORM's supplied package reports structural validation for all 360 ANI and 360 CUR files. That is file-format/parser validation, not a live Windows 10/11 installation or playback test. Its numbered installer is included in the archive but has not been smoke-tested on a physical Windows machine in the build environment.

No blanket redistribution license is asserted for any collection. See [LICENSE-NOTICE.md](LICENSE-NOTICE.md) and [asset provenance](docs/ASSET-PROVENANCE.md).
