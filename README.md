# Install
## Linux
Run [install script](utils/install.sh) now for APT and Pacman. Sudo will be requested for package manager.

## Windows

Installing guide:
https://www.tug.org/texlive/windows.html

## VS Code extension

Full list in [file](.vscode/extensions.json)

1. [james-yu.latex-workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) necessary for work.

2. Cpell-checker for grammar check.

# Setup
## VS Code settings.json

Full [file](.vscode/settings.json)


`"latex-workshop.latex.outDir": "output/",` to hide output files

## Fonts

CMU Serif - Computer Modern UTF - usually packs with TexLive

JetBrains Mono - [website](https://www.jetbrains.com/lp/mono/) - support ru

## EXternal Dependency

`python-pygments` for **minted**