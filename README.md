# 📄 RTL Lite CV (Typst Edition)

A modern, lightweight, and blazing-fast CV template designed specifically for **Persian (Farsi)** and other Right-to-Left (RTL) languages. 

This project is a simpler, faster alternative to LaTeX-based solutions like `rendercv`. Powered by [Typst](https://typst.app), it compiles in milliseconds and handles RTL natively without complex packages.

---

01001000 01100001 01110000 01110000 01111001 00100000 01001110 01100101 01110111 00100000 01011001 01100101 01100001 01110010

---

## ✨ Features
- **Native RTL:** No `bidi` hacks; perfect Persian/Arabic support out of the box.
- **Feather-Light:** No 5GB LaTeX installation. Just a 20MB executable.
- **Modern Design:** Clean, professional, and easy to customize.
- **Instant Preview:** See changes as you type (via Typst App or VS Code).

---

## 💻 Quick Start — Local (Windows)

### 1. Download Typst
Download the `x86_64-pc-windows-msvc` zip from the [Official Releases](https://github.com/typst/typst/releases).

### 2. Setup Folder
Extract the zip and copy **only** the `typst.exe` file. Paste it directly into the root of this project folder.



### 3. Compile
Open PowerShell in this project folder and run:

```powershell
.\typst.exe compile cv.typ --font-path ./fonts
