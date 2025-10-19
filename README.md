# Thesis: A Causal Machine Learning Approach to Economic Policy Simulation and Decision-Making

This repository contains the LaTeX source code for the thesis "A Causal Machine Learning Approach to Economic Policy Simulation and Decision-Making" by MD. Rishad Nur.

## Structure

```
thesis/
├── main.tex                    # Main LaTeX file
├── sections/                   # Individual section files
│   ├── abstract.tex           # Abstract
│   ├── introduction.tex       # Introduction
│   ├── literature-review.tex  # Literature Review
│   ├── data.tex              # Data section
│   ├── methodology.tex       # Methodology
│   ├── results.tex           # Results
│   ├── discussion.tex        # Discussion
│   ├── conclusion.tex        # Conclusion
│   └── appendix.tex          # Appendix
├── bibliography/              # Bibliography files
│   ├── references.bib        # BibTeX references
│   └── bibliography.tex      # Bibliography formatting
├── figures/                   # Figure files (images, plots)
└── Makefile                   # Build automation
```

## Compilation

### Using Make (Recommended)

```bash
# Compile the complete thesis
make

# Quick single-pass compilation
make quick

# Clean auxiliary files
make clean

# Clean everything including PDF
make distclean

# View the PDF (macOS)
make view

# Continuous compilation (auto-recompile on changes)
make watch
```

### Using pdflatex directly

```bash
# Basic compilation
pdflatex main.tex

# With bibliography (if references are added)
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Usage

1. **Edit sections**: Modify individual `.tex` files in the `sections/` directory
2. **Add figures**: Place image files in the `figures/` directory and reference them in your sections
3. **Add references**: Add BibTeX entries to `bibliography/references.bib`
4. **Compile**: Use `make` to generate the PDF

## Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Required packages (already included in the template):
  - amsmath, natbib, hyperref, booktabs, siunitx
  - longtable, graphicx, makecell, float, subcaption
  - lineno, xcolor, soul (for line numbers and highlighting)

## Notes

- The template uses the standard `article` class with 12pt font and A4 paper
- Line numbers are enabled for draft review
- Each section is in a separate file for better organization
- The bibliography uses natbib with numeric style
- All auxiliary files are automatically managed by the Makefile

## Author

MD. Rishad Nur  
Department of Computer Science and Engineering  
Begum Rokeya University, Rangpur, Bangladesh  
Email: rishad.nur007@gmail.com
