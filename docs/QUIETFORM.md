# QUIETFORM · 20 Professional Cursor Families

QUIETFORM is the library's restrained, professional cursor collection. It is designed around clear silhouettes, neutral colours and subtle functional animation rather than neon, rainbow, metallic-gold or gaming effects.

## Archive inventory

- **Archive:** `QUIETFORM_Download.zip`
- **Archive size:** 13,138,925 bytes
- **Archive entries:** 891
- **Families:** 20
- **Cursor types per family:** 18
- **Animated files:** 360 `.ani`
- **Static alternatives:** 360 `.cur`
- **Animation frames:** 2,448
- **Embedded cursor sizes:** 32×32, 48×48 and 64×64
- **SHA-256 of inspected archive:** `4d2f06adab5fadf6d5f27ae9233028919a7992058e8e4381be741ce4cf357689`

## Design direction

The design language prioritizes clarity, visual balance, legibility at small sizes, controlled contour weight, considered proportions and restrained motion.

The package's neutral palette includes graphite, charcoal, ivory, cool and warm greys, slate, navy, dusty blue, sage, muted teal and stone. The design-system notes explicitly avoid gradients, glow, drop shadows, neon and gold.

Animations are designed as secondary feedback. Depending on cursor type, they use gentle breathing, rotating progress indicators, small directional shifts, subtle internal changes, handwriting traces or restrained finger movement. The pointing tip, fingertip, crosshair centre and location-pin tip are intended to remain stable.

## The 20 families

| # | Family | Character |
|---:|---|---|
| 01 | Graphite Standard | Balanced graphite reference style |
| 02 | Soft Slate | Calm, rounded, unhurried |
| 03 | Paper & Ink | Ivory body with ink contour |
| 04 | Quiet Navy | Desaturated navy and angled pointer |
| 05 | Dusty Blue | Mid-tone blue and charcoal contour |
| 06 | Sage Studio | Sage body and warm-white accent |
| 07 | Charcoal Outline | Hollow shapes and charcoal linework |
| 08 | Warm Grey | Warm stone and soft-black accents |
| 09 | Frosted Neutral | Pale neutral fill and slate line |
| 10 | Blueprint Precision | Drafting line and registration ticks |
| 11 | Editorial Monochrome | Soft black, white contour and grey accent |
| 12 | Rounded Utility | Heavier, friendly and unmistakable |
| 13 | Fine-Line Technical | Fine, mitred and precise linework |
| 14 | Soft Ceramic | Glazed off-white with slate contour |
| 15 | Carbon Precision | Near-black with silver contour |
| 16 | Pebble Minimal | Stone body and softened corners |
| 17 | Muted Teal | Restrained teal with pale accent |
| 18 | Ink & Chalk | Ink body with chalk-like contour |
| 19 | Nordic Neutral | Pale cool grey with deep-slate contour |
| 20 | Contemporary Office | Charcoal, white contour and steel-blue accent |

## The 18 cursor types

Each family contains:

1. Normal Select
2. Help Select
3. Working in Background
4. Busy
5. Precision Select
6. Text Select
7. Handwriting
8. Unavailable
9. Vertical Resize
10. Horizontal Resize
11. Diagonal Resize 1
12. Diagonal Resize 2
13. Move
14. Alternate Select
15. Link Select
16. Location Select
17. Person Select
18. Pan / Grab

Windows does not provide a standard system-wide cursor scheme slot for Pan / Grab. It is included as an additional asset for applications that can load custom cursors.

## Technical format and file layout

Every animated cursor is a Windows `.ani` file using a RIFF `ACON` container. The package technical notes describe an ANI header, frame sequencing and embedded CUR images. Each frame carries 32×32, 48×48 and 64×64 representations, with alpha transparency and per-role hotspot coordinates.

Each family folder contains:

- 18 animated `.ani` files.
- `Static_CUR/` with 18 `.cur` alternatives for reduced-motion use.
- `PREVIEW_SHEET.png` and `PREVIEW_SHEET.svg`.
- `README.md` with its design identity and cursor inventory.
- `MANIFEST.csv` with frame timing, hotspots, resolution, file size and SHA-256 data.
- `TECHNICAL.md` with per-cursor technical information.
- `Install.inf` for optional scheme registration.

The archive root also contains the master README, design system, full cursor catalog, complete manifest, quality-assurance report, installation guide and installer scripts.

## Numbered Windows installer

1. Extract `QUIETFORM_Download.zip` to a normal folder.
2. Double-click `INSTALL_QUIETFORM.bat`.
3. Enter a family number from `01` through `20`.
4. The helper copies the selected family's assets, registers the scheme and activates it for the current Windows user.
5. To return to the cursor settings saved before the first QUIETFORM install, run `RESTORE_QUIETFORM.bat`.

The package documents that the installer stores the original cursor registry settings under:

`%LOCALAPPDATA%\QUIETFORM\Backups\Original-before-QUIETFORM.reg`

It installs the selected cursor assets under:

`%LOCALAPPDATA%\QUIETFORM\Cursors\<family>\`

The package says that the installer does not request administrator privileges. Review the included PowerShell helper before running it, particularly on managed or work computers.

## Quality report and limitations

The included quality-assurance report records:

- 360 of 360 ANI files passing structural validation.
- 360 of 360 CUR files passing structural validation.
- 2,448 encoded animation frames.
- RIFF/ACON chunk and header checks.
- Embedded cursor dimensions and hotspot checks.
- Transparency and edge-clipping checks.
- At least two distinct frames per ANI.
- Simulated contrast checks against light and dark backgrounds.
- A duplicate first-frame artwork scan.

**Important:** these are the checks reported by the package's parser and build process. The package explicitly states that it has not been installed or smoke-tested on a physical Windows 10/11 machine in the build environment. Treat the installer as unverified until tested on a real Windows installation, and retain the backup so it can be restored.

## Design and technical source notes

The package documents the design grid as 32×32 units, exports at 32, 48 and 64 pixels, scales hotspots consistently across sizes and keeps pointer tips fixed during animation. It also notes that the families share a consistent geometric cursor grammar while varying palette, silhouette, stroke treatment, indicators and animation tempo. They are coordinated families rather than 20 entirely unrelated illustration systems.
