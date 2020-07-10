#!/bin/bash

source clean.sh

BASE=report
#"${1%.*}"
pdflatex $BASE.tex
if [ $? -ne 0 ]; then
    echo "Compilation error. Check log."
fi
bibtex $BASE
pdflatex $BASE.tex
pdflatex $BASE.tex

