# Makefile for LaTeX thesis compilation

# Main LaTeX file
MAIN = main
TEX_FILES = $(wildcard sections/*.tex) $(wildcard bibliography/*.tex)
BIB_FILES = bibliography/references.bib

# Output directory
OUTPUT_DIR = .

# LaTeX compiler
LATEX = pdflatex
BIBTEX = bibtex

# Default target
all: $(MAIN).pdf

# Compile the main document
$(MAIN).pdf: $(MAIN).tex $(TEX_FILES) $(BIB_FILES)
	$(LATEX) $(MAIN).tex
	@if grep -q "\\citation" $(MAIN).aux; then \
		$(BIBTEX) $(MAIN); \
		$(LATEX) $(MAIN).tex; \
		$(LATEX) $(MAIN).tex; \
	fi

# Quick compile (single pass)
quick: $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Clean auxiliary files
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.synctex.gz *.fdb_latexmk *.fls

# Clean everything including PDF
distclean: clean
	rm -f $(MAIN).pdf

# Force rebuild
rebuild: distclean all

# View the PDF (macOS)
view: $(MAIN).pdf
	open $(MAIN).pdf

# Continuous compilation (requires latexmk)
watch:
	latexmk -pdf -pvc $(MAIN).tex

.PHONY: all quick clean distclean rebuild view watch