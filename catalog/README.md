# Catalog

This directory stores machine-readable collection metadata and asset inventories.

- `collection-summary.json`: total collection, theme, and ANI counts plus related generator URLs.
- `theme-inventory.csv`: one row per theme.
- `cursor-inventory.csv`: one row per ANI asset.
- `SHA256SUMS.txt`: checksums for the locally assembled collection files.

CSV rows describe the extracted local bundle. Run the local validator after changing assets, then regenerate checksums.
