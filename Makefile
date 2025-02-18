LATEX         := pdflatex
PDF_VIEWER    := evince
TEX_FILES_DIR := tex-files
CV_DIR        := CV

all: eng swe

eng:
	cd $(TEX_FILES_DIR); $(LATEX) -output-directory ../$(CV_DIR) TommyMattsson-CV-english.tex
	make clean

eng-show: eng
	$(PDF_VIEWER) $(CV_DIR)/TommyMattsson-CV-english.pdf

swe:
	cd $(TEX_FILES_DIR); $(LATEX) -output-directory ../$(CV_DIR) TommyMattsson-CV-svensk.tex
	make clean

swe-show: swe
	$(PDF_VIEWER) $(CV_DIR)/TommyMattsson-CV-svensk.pdf

clean:
	-@cd $(CV_DIR); rm -rf *.log

clean-pdf: clean
	-@rm -rf $(CV_DIR)/*.pdf

.PHONY: all clean
