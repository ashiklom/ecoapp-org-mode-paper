#!/usr/bin/env bash

rm -rf shiklomanov_ea_diff.{aux,log,out,tex,pdf}
latexdiff shiklomanov_ea_old.tex shiklomanov_ea_new.tex > shiklomanov_ea_diff.tex
pdflatex shiklomanov_ea_diff.tex
