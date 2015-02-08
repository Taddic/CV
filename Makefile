LATEX      := pdflatex
PDF_VIEWER := evince

all: eng swe

eng:
	$(LATEX) TommyMattsson-CV-english.tex
	make clean

eng-show: eng
	$(PDF_VIEWER) TommyMattsson-CV-english.pdf

swe:
	$(LATEX) TommyMattsson-CV-svensk.tex
	make clean

swe-show: swe
	$(PDF_VIEWER) TommyMattsson-CV-svensk.pdf

clean:
	-@rm -rf *.log *.aux *.dvi *~

clean-pdf: clean
	-@rm -rf *.pdf

.PHONY: all clean
