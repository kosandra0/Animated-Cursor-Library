# The Windows .ani animated cursor format

A Windows `.ani` file is an animated cursor container, not a GIF renamed with a different extension. It uses a RIFF container whose form type is `ACON`.

## Common chunks

- `anih`: animation header (frame count, step count, dimensions, bit depth, and flags).
- `rate`: per-step timing values, when present.
- `seq `: frame order, when present.
- `LIST` / `fram`: animation frame list and related metadata.
- `icon`: embedded cursor or icon image data.

Exact chunk layouts vary by file. The validator checks container structure and does not rewrite ANI files.

## Validation performed on supplied assets

The local build checked:
1. RIFF signature at byte zero.
2. ACON form identifier at byte offset eight.
3. Declared RIFF size against the actual file length.
4. ANI animation header presence and non-zero frame/step counts where available.

The local catalog recorded 415 valid RIFF/ACON files. This is structural validation, not a visual playback or hotspot consistency test.

## Timing and hotspots

ANI timing values use jiffies, conventionally 1/60 of a second. Cursor frames also carry a hotspot coordinate that determines the click point. If hotspots vary between frames, the pointer may appear to jump. Application support and Windows scaling can affect the visible result.
