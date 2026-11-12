# Cursor role reference

The four collections do not all use the same role inventory. The first two packs provide 15 roles per theme, Neon Pulse provides 20, and QUIETFORM provides 18.

## Common 15-role set

| Role | Purpose |
|---|---|
| Normal Select | Default pointer |
| Help Select | Contextual help |
| Working in Background | Background activity while the pointer remains usable |
| Busy | Wait / busy state |
| Precision Select | Fine selection or drawing |
| Text Select | Text insertion |
| Handwriting | Pen / handwriting input |
| Unavailable | Action unavailable |
| Vertical Resize | Vertical resizing |
| Horizontal Resize | Horizontal resizing |
| Diagonal Resize 1 | Diagonal resizing in one direction |
| Diagonal Resize 2 | Diagonal resizing in the other direction |
| Move | Move an object, window or selection |
| Alternate Select | Alternate selection pointer |
| Link Select | Clickable link / hyperlink |

## Additional roles in Neon Pulse

Neon Pulse adds these five roles to the common set:

| Role | Purpose |
|---|---|
| Location Select | Pin / location pointer, application-dependent |
| Person Select | Person / contact pointer, application-dependent |
| Pan | Pan a canvas or viewport, application-dependent |
| Zoom In | Zoom in, application-dependent |
| Zoom Out | Zoom out, application-dependent |

## QUIETFORM's 18 cursor types

QUIETFORM includes the common 15-role set plus Location Select, Person Select and Pan / Grab.

| # | QUIETFORM type | Purpose / notes |
|---:|---|---|
| 01 | Normal Select | Primary everyday pointer |
| 02 | Help Select | Pointer with a help indicator |
| 03 | Working in Background | Pointer remains usable while background activity is shown |
| 04 | Busy | Busy / wait indicator |
| 05 | Precision Select | Crosshair for precise selection |
| 06 | Text Select | Text insertion and selection |
| 07 | Handwriting | Pen / handwriting input |
| 08 | Unavailable | Indicates an unavailable action |
| 09 | Vertical Resize | Resize vertically |
| 10 | Horizontal Resize | Resize horizontally |
| 11 | Diagonal Resize 1 | Resize on one diagonal |
| 12 | Diagonal Resize 2 | Resize on the opposite diagonal |
| 13 | Move | Move an object or selection |
| 14 | Alternate Select | Alternate selection pointer |
| 15 | Link Select | Clickable link / hyperlink |
| 16 | Location Select | Location / map-pin pointer |
| 17 | Person Select | Person / contact pointer |
| 18 | Pan / Grab | Hand for panning or dragging a canvas |

## Compatibility notes

- Windows pointer schemes expose a defined set of system cursor roles. QUIETFORM's installer assigns the 17 named roles documented in that package; Pan / Grab is copied as an additional asset for applications that support custom cursors.
- Neon Pulse's Pan, Zoom In and Zoom Out roles are application-dependent. Applications can override the system cursor scheme or ignore roles they do not support.
- The presence of an asset in a ZIP does not guarantee that every application can assign it globally.
