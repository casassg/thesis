all: Gerard_Casas_Saez_Thesis.pdf

Gerard_Casas_Saez_Thesis.pdf: main.pdf 
	mv main.pdf Gerard_Casas_Saez_Thesis.pdf


main.pdf: main.tex Chapters/*.tex
	latex main.tex
	bibtex main
	pdflatex main.tex


clean: 
	rm *.aux *.pdf *.log *.lot *.out *.xml *.toc main-blx.bib *.lof *.bbl *.blg *.dvi *.lol