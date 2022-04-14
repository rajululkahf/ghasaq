TEX=pdflatex
BIB=bibtex
NAME=ghasaq

.PHONY: all
all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex references.bib
	$(TEX) $(NAME)
	$(BIB) $(NAME)
	$(TEX) $(NAME)
	$(TEX) $(NAME)

.PHONY: clean
clean:
	rm -f *.log *.aux *.toc *.bbl *.blg *.acn *.glo *.ist *.out
