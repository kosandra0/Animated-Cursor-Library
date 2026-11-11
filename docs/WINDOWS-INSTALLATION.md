# Windows installation and restoration

## Before installing

- Extract the ZIP fully; do not run installers from inside a ZIP viewer.
- Keep the root BAT and PowerShell helpers with the theme folders.
- Read supplied README and scripts before running them.
- These are per-user cursor settings tools; endpoint policies or security software may still block registry changes.

## Automatic installation

Each collection contains its own installer. For the 16-theme pack, run its root `Install-Cursors.bat` and choose 1–16. The GlowCursors and Neon Pulse packs also provide a master selector; run the BAT, choose a theme, and rerun it to switch themes.

The original installer files are preserved as supplied. They were not executed on a Windows host during repository assembly.

## Manual installation

1. Press `Win + R`.
2. Enter `main.cpl` and press Enter.
3. Open **Pointers**.
4. Select a role under **Customize**.
5. Click **Browse**, then select the matching `.ani` file.
6. Repeat for other roles and select **Apply**.

Where supplied, a theme's `Install.inf` can also be installed through Windows Explorer's right-click **Install** command.

## Restore Windows defaults

Open `main.cpl` → **Pointers** → choose the Windows Default system scheme → **Apply**. Some collections also include a restore helper; inspect it before running.

If the pointer does not refresh immediately, sign out and back in. Customized applications may use their own pointer assets.
