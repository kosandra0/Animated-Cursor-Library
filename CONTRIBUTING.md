# Contributing

Thank you for helping maintain the Animated Cursor Library.

## Adding a collection

1. Place extracted files under `collections/<Collection-Name>/`.
2. Preserve original theme names and supplied installers.
3. Add a ZIP archive under `downloads/`.
4. When a relevant generator or reference page exists, place a matching `.url` Internet Shortcut beside the ZIP.
5. Update `docs/COLLECTIONS.md`, `catalog/`, and the root README.
6. Regenerate SHA-256 checksums and inventories.
7. Run `python tools/validate_repository.py`.

## Asset integrity

Do not silently rename, re-encode, or rewrite supplied ANI assets. Record source archive names and hashes. Keep separate collections isolated even when theme names overlap.

## Licensing

Do not add an MIT, CC0, Creative Commons, or other license claim unless the asset rights holder and scope are verified. See [LICENSE-NOTICE.md](LICENSE-NOTICE.md).
