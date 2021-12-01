.PHONY: pdf .intermediates/main.pdf

pdf: .intermediates/main.pdf
	cp .intermediates/main.pdf ./main.pdf
.intermediates/main.pdf: main.tex src/*
	latexmk -pdflua -outdir=.intermediates/ -shell-escape $< 
clean:
	rm -rf _minted-main/ .intermediates/ 
clean-all:
	rm -rf *_minted-main/ .intermediates/ *.pdf
open:
	xdg-open main.pdf
