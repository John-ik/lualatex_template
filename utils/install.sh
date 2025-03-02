#!/bin/env bash

# Dependenсy installer

if which apt &>/dev/null; then
	echo 'APT detected'
	sudo apt-get update
	sudo apt-get install python3-pygments texlive-full
fi

if which pacman &>/dev/null; then
	echo 'PACMAN detected'
	sudo pacman -Sy
	sudo pacman -S \
		python-pygments \
		texlive-basic \
		texlive-bibtexextra \
		texlive-bin \
		texlive-binextra \
		texlive-fontsextra \
		texlive-fontsrecommended \
		texlive-fontutils \
		texlive-langcyrillic \
		texlive-latex \
		texlive-latexextra \
		texlive-latexrecommended \
		texlive-luatex \
		texlive-mathscience \
		texlive-pictures \
		texlive-publishers
fi

