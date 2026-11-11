# Animated Cursor Library

A curated Windows animated-cursor library containing three separately maintained collections, installation tools, previews, inventories, reference-generator links, and format documentation.

> **Local collection prepared:** 415 animated `.ani` files across 26 theme folders in three collections. **Important:** the GitHub repository currently contains the documentation and reference links; the three binary ZIP downloads are not yet committed. See [BINARY-ASSET-UPLOAD.md](BINARY-ASSET-UPLOAD.md) for the exact upload steps.

## Collections

| Collection | Themes | ANI files | Description | Related generator |
|---|---:|---:|---|---|
| **Glow Cursor Forge · 16 Themes** | 16 | 240 | Neon palette collection with 15 Windows pointer roles per theme. | [16-theme generator](https://01a1cc83-38e3-7b7d-baeb-71ddbce0c760.arena.site/) |
| **GlowCursors · 5 Themes** | 5 | 75 | Five-theme subset with 15 pointer roles per theme. | [Six-theme generator](https://01a1cc5a-9188-7399-bb27-6279ce3926ee.arena.site/) |
| **Neon Pulse · 5 Themes** | 5 | 100 | Neon cursor pack with 20 roles per theme, including application-oriented extras. | No generator link supplied |

## Generator reference links beside the matching packs

### Glow Cursor Forge · 16-theme generator
[Open the generator](https://01a1cc83-38e3-7b7d-baeb-71ddbce0c760.arena.site/) · The inspected page advertises 16 themes, 15 cursor roles, four animation styles (Pulse, Breathe, Shimmer, Rainbow), three body fills (Neon, Glass, Solid), 32/48/64/96 px sizes, and 16/24/32/48 frame options.

**Matching archive name:** `Glow-Cursor-Forge-16-Themes.zip`

### Glow Cursor Forge · six-theme generator
[Open the generator](https://01a1cc5a-9188-7399-bb27-6279ce3926ee.arena.site/) · The inspected page advertises six themes, 15 cursor roles, 32/48/64 px sizes, 16/24/32 frame options, and Fast/Normal/Chill pulse speeds.

**Matching archive name:** `GlowCursors-5-Themes.zip`. The supplied five-theme archive is a subset of the six-theme generator's choices, not the complete 90-cursor output.

Generator pages are user-generated Arena pages, not official Windows documentation. Their controls and claims are described as observed on 12 November 2026. See [reference-site notes](docs/REFERENCE-SITES.md).

## Repository contents

The full local repository bundle is designed to contain:

- `collections/`: extracted theme directories, ANI files, installers, preview sheets, and source READMEs.
- `downloads/`: the three ready-to-use ZIP packs and the matching Windows Internet Shortcut (`.url`) files beside the two related archives.
- `source-archives/`: the original uploaded RAR files, byte-for-byte.
- `catalog/`: CSV/JSON inventories and SHA-256 checksums.
- `docs/`: collection guide, cursor role mapping, Windows instructions, ANI format notes, reference-site inspection, and asset provenance.
- `tools/`: a no-dependency Python validator.
- `.github/workflows/`: automated validation.

## Windows installation

1. Download the chosen pack and extract it completely.
2. Open the extracted collection folder.
3. Run its root `Install-Cursors.bat` selector, or the individual theme's installer where provided.
4. Select a theme and allow the per-user cursor scheme to update.
5. To switch themes later, run the selector again.

Manual installation: press `Win + R`, run `main.cpl`, open **Pointers**, choose a role, select **Browse**, and point it to the corresponding `.ani` file. See [Windows installation](docs/WINDOWS-INSTALLATION.md).

## Cursor roles

The classic theme packs provide 15 roles: Normal Select, Help Select, Working in Background, Busy, Precision Select, Text Select, Handwriting, Unavailable, Vertical Resize, Horizontal Resize, Diagonal Resize 1, Diagonal Resize 2, Move, Alternate Select, and Link Select.

Neon Pulse adds Location Select, Person Select, Pan, Zoom In, and Zoom Out. Some of these additional roles are application-dependent and are not exposed by every program.

## Validation

Run the validator from the repository root:

```powershell
python tools\validate_repository.py
```

It checks RIFF/ACON signatures, declared lengths, ANI header chunks, expected collection counts, and ZIP CRC integrity. This checks container structure; it does not replace a visual playback test on Windows.

## Licensing and provenance

The supplied archives did not include a clear redistribution license covering every cursor asset and installer. No blanket open-source license is applied to these assets. Review [LICENSE-NOTICE.md](LICENSE-NOTICE.md) and [asset provenance](docs/ASSET-PROVENANCE.md) before public redistribution or commercial use.

> **Publishing status (12 November 2026):** The GitHub repository is created and currently contains the documentation, reference notes, catalog summary, and sync helpers. The binary cursor assets (415 ANI files, ZIP/RAR archives, and preview PNGs) are still in the companion local bundle and have not yet been uploaded through the connector. Run [SYNC-TO-GITHUB.bat](SYNC-TO-GITHUB.bat) from the extracted bundle on Windows to push the complete binary library to this existing repository.

## Full-pack sync

The GitHub web connector can commit documentation but does not directly transfer local binary files. To publish the complete local bundle, extract the accompanying repository package and run `SYNC-TO-GITHUB.bat` on Windows with Git and GitHub CLI installed and authenticated. The script copies the entire local repository (including ANI files, ZIPs, previews, and RAR originals) into this already-created GitHub repository and pushes it. It does not create a second repository.

---

**Project:** Animated Cursor Library  
**Repository:** [kosandra0/Animated-Cursor-Library](https://github.com/kosandra0/Animated-Cursor-Library)
