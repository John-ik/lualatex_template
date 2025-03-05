# Install
## Linux
Run [install script](utils/install.sh) now for APT and Pacman. Sudo will be requested for package manager.

## Windows

Installing guide:
https://www.tug.org/texlive/windows.html


# Setup
## VS Code settings.json

Full [file](.vscode/settings.json)

"-shell-escape" in arg lualatexmk tools:

```json
{
"name": "lualatexmk",
"command": "latexmk",
"args": [
    "-synctex=1",
    "-interaction=nonstopmode",
    "-file-line-error",
    "-lualatex",
    "-outdir=%OUTDIR%",
    "%DOC%",
    "-shell-escape"
],
"env": {}
},
```


`"latex-workshop.latex.outDir": "output/",` to hide output files

## Fonts

CMU Serif - Computer Modern UTF - usually packs with TexLive

JetBrains Mono - [website](https://www.jetbrains.com/lp/mono/) - support ru

## EXternal Dependency

`python-pygments` for **minted**