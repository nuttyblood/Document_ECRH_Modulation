#!/bin/bash

version="1"

pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex
bibtex main.aux
bibtex main.aux
pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex

cp main.tex versions/ECRH_modulation_v${version}.tex
cp main.pdf versions/ECRH_modulation_v${version}.pdf
