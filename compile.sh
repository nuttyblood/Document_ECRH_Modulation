#!/bin/bash

# Si desea actualizar la actual version del script, por favor aumente una unidad el valor entre comillas
version="1" 
echo "Version = "$version

# compilacion del documento
pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex
bibtex main.aux
bibtex main.aux
pdflatex -shell-scape main.tex
pdflatex -shell-scape main.tex

# guardado de versiones
cp main.tex versions/ECRH_modulation_v$version.tex
cp main.pdf versions/ECRH_modulation_v$version.pdf
