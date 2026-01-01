# RTL Lite CV (Typst Edition)

A modern, lightweight CV template for Persian (RTL) languages using Typst.

## Quick Start — Online

- Open the Typst Web App: https://typst.app
- Create or upload `cv.typ` and `template.typ` in the left file panel. Upload any font files you want to use (see Fonts below).
- The preview updates automatically; export to PDF from the web UI.

## Quick Start — Local (Windows)

1. Download Typst for Windows from the official releases: https://github.com/typst/typst/releases
	- Choose the `x86_64-pc-windows-msvc` (or matching) zip for your machine.
2. Extract the archive and place `typst.exe` somewhere convenient (for example `./typst/typst.exe`) or add it to your `PATH`.
3. From PowerShell in this project folder run:

```powershell
cd "path/to/your/rtl-lite-cv"
# If typst.exe is in ./typst/
.\typst\typst.exe compile cv.typ
# Or, if `typst` is in your PATH:
typst compile cv.typ
```

4. The compiled PDF will be saved as `cv.pdf` in the project root.

## Fonts

- Recommended: `Vazir` (or `Vazirmatn`) for Persian and `DejaVu Sans` as a Latin fallback.
- Place `.ttf`/`.otf` font files into the `fonts/` folder in this project. Typst will discover local font files when you compile.

Example (PowerShell):

```powershell
# Download Vazir TTFs manually and copy into the project fonts folder
New-Item -ItemType Directory -Path fonts -Force
Copy-Item 'C:\Users\You\Downloads\Vazir-*.ttf' -Destination fonts\
```

## Troubleshooting

- "unknown font family: Vazir-Medium": the font file is missing or the family name differs — ensure the correct TTF is in `fonts/`.
- "The specified executable is not a valid application for this OS platform": you downloaded the wrong architecture (e.g., aarch64). Download the `x86_64` Windows release.
- If you prefer not to install locally, use the Typst Web App for immediate preview.

## Files

- `cv.typ` — your CV content (edit this).
- `template.typ` — layout and macros used by `cv.typ`.
- `fonts/` — place font files here.

---

If you want, I can add a small `download-typst.ps1` script and optionally fetch recommended fonts into `fonts/` — should I add that for you?

