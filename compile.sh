#!/bin/bash
pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex
bibtex main.aux
bibtex main.aux
pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex
