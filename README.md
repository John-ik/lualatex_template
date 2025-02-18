# VS Code settings.json

"-shell-escape" in arg lualatexmk tools:

```
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
```

`"latex-workshop.latex.outDir": "output/",` to hide output files