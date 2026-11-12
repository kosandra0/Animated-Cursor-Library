# Collection guide

The library contains four independent Windows cursor packs. Theme counts, cursor-role counts and animation formats differ by pack; read each section before choosing an archive.

## 1. Glow Cursor Forge · 16 Themes

**Archive:** `Glow-Cursor-Forge-16-Themes.zip`  
**Inventory:** 16 themes × 15 roles = **240 ANI files**  
**Reported archive size:** 22,131,398 bytes

A neon/glow collection with vibrant palettes and animated visual treatments. The supplied export metadata records 32×32 frames, 48 animation steps, Breathe animation, Glass fill and 110% glow. The related generator advertises additional options.

| Theme | Visual identity |
|---|---|
| Cyber Cyan | Electric ice-blue pulse |
| Neon Magenta | Hot synthwave glow |
| Toxic Lime | Radioactive green energy |
| Solar Flare | Molten amber heat |
| Plasma Violet | Deep-space plasma |
| Aurora Spectrum | Colour-cycling northern lights |
| Crimson Pulse | Blood-red heartbeat |
| Ocean Abyss | Deep-sea bioluminescence |
| Arctic Frost | Frozen crystal shimmer |
| Emerald Matrix | Digital-rain emerald |
| Sunset Drift | Orange-to-rose horizon |
| Golden Hour | Liquid-gold glow |
| Ghost White | Spectral silver |
| Inferno | Yellow-to-red wildfire |
| Prism Pulse | Full-rainbow prism cycle |
| Bubblegum Pink | Candy-pink glow |

## 2. GlowCursors · 5 Themes

**Archive:** `GlowCursors-5-Themes.zip`  
**Inventory:** 5 themes × 15 roles = **75 ANI files**  
**Reported archive size:** 3,751,130 bytes

This archive is a five-theme subset related to a six-theme generator. It is not the complete six-theme generator output. The five included themes are Aurora Spectrum, Cyber Cyan, Plasma Violet, Solar Flare and Toxic Lime. Neon Magenta is not present in this ZIP.

The supplied pack README records 32×32 artwork, 32 animation frames and 2 jiffies per frame.

## 3. Neon Pulse · 5 Themes

**Archive:** `NeonPulse-5-Themes.zip`  
**Inventory:** 5 themes × 20 roles = **100 ANI files**  
**Reported archive size:** 4,864,633 bytes

| Theme | Visual identity |
|---|---|
| Cyber Cyan | Electric cyan |
| Ultraviolet | Purple / magenta |
| Emerald Pulse | Neon green |
| Solar Flare | Golden amber |
| Crimson Nova | Crimson red / pink |

The collection includes the 15 common Windows roles plus Location Select, Person Select, Pan, Zoom In and Zoom Out. The supplied README records 64×64 artwork and eight animation frames. Some additional roles are application-dependent.

## 4. QUIETFORM · 20 Professional Themes

**Archive:** `QUIETFORM_Download.zip`  
**Inventory:** 20 families × 18 cursor types = **360 ANI files + 360 CUR files**  
**Archive size:** 13,138,925 bytes  
**Archive entries:** 891

QUIETFORM is a neutral, restrained and professional alternative to the library's neon collections. Its design system uses graphite, charcoal, ivory, grey, muted slate, navy, dusty blue, sage, teal and stone. It avoids rainbow palettes, neon glow and gold effects.

### Family list

| # | Family | Design direction |
|---:|---|---|
| 01 | Graphite Standard | Balanced graphite reference style |
| 02 | Soft Slate | Calm, rounded and unhurried |
| 03 | Paper & Ink | Ivory body with ink contour |
| 04 | Quiet Navy | Desaturated navy and angled pointer |
| 05 | Dusty Blue | Mid-tone blue with charcoal contour |
| 06 | Sage Studio | Sage body and warm-white accent |
| 07 | Charcoal Outline | Hollow shapes with charcoal linework |
| 08 | Warm Grey | Warm stone with soft-black accents |
| 09 | Frosted Neutral | Pale neutral treatment with slate line |
| 10 | Blueprint Precision | Drafting-inspired linework and registration ticks |
| 11 | Editorial Monochrome | Soft black, white contour and grey accent |
| 12 | Rounded Utility | Heavier, friendly and clearly legible |
| 13 | Fine-Line Technical | Fine, precise line treatment |
| 14 | Soft Ceramic | Glazed off-white with slate contour |
| 15 | Carbon Precision | Near-black with silver contour |
| 16 | Pebble Minimal | Stone tones and softened corners |
| 17 | Muted Teal | Restrained teal with pale accent |
| 18 | Ink & Chalk | Ink body with chalk-like contour |
| 19 | Nordic Neutral | Pale cool grey with deep-slate contour |
| 20 | Contemporary Office | Charcoal, white contour and steel-blue accent |

### Eighteen cursor types in every family

Normal Select, Help Select, Working in Background, Busy, Precision Select, Text Select, Handwriting, Unavailable, Vertical Resize, Horizontal Resize, Diagonal Resize 1, Diagonal Resize 2, Move, Alternate Select, Link Select, Location Select, Person Select and Pan / Grab.

### File and installer contents

- 360 animated ANI files and 360 static CUR fallbacks.
- Each ANI frame embeds 32×32, 48×48 and 64×64 cursor images.
- 2,448 animation frames across the collection.
- PNG and SVG family preview sheets.
- A 360-row complete manifest with timing, hotspots, sizes, file lengths and SHA-256 values.
- Design system, master README, cursor catalog, technical notes, installation guide and quality-assurance report.
- `INSTALL_QUIETFORM.bat` for numbered family selection.
- `RESTORE_QUIETFORM.bat` for restoring the original cursor settings.

Run `INSTALL_QUIETFORM.bat`, enter `01`–`20`, and the helper installs and activates the chosen family for the current Windows user. The package documentation says it backs up the original settings before the first QUIETFORM install. Pan / Grab remains an application-oriented extra because Windows does not expose a standard system-wide scheme slot for it.

The package reports successful structural validation for all 360 ANI and 360 CUR files. Physical Windows runtime testing is still outstanding. See [QUIETFORM technical notes](QUIETFORM.md).

## Aggregate inventory

| Measure | Total |
|---|---:|
| Separate ZIP collections | 4 |
| Theme folders across packs | 46 |
| Animated ANI files | 775 |
| Static CUR files | 360 |
| CUR fallback files are included in | QUIETFORM only |

The 15-role, 20-role and 18-role inventories are specific to each collection; totals are not a promise that every role exists in every pack.
