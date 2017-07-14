all: Gerard_Casas_Saez_Thesis.pdf 

presentation: presentation.pdf

Gerard_Casas_Saez_Thesis.pdf: main.pdf 
	mv main.pdf Gerard_Casas_Saez_Thesis.pdf

presentation.pdf: presentation.tex Figures/*
	xelatex presentation.tex


main.pdf: main.tex Chapters/*.tex Figures/* main-blx.bib
	pdflatex main.tex


main-blx.bib: example.bib
	pdflatex main.tex
	bibtex main

clean: 
	rm *.aux *.pdf *.log *.lot *.out *.xml *.toc main-blx.bib *.lof *.bbl *.blg *.dvi *.lol *.nav *.snm *.upa