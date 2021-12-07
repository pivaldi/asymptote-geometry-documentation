INCLUDE_DIR=include
SRC= $(wildcard *.tex)
PDF= $(SRC:.tex=.pdf)

all: pdf

pdf: $(PDF)

%.pdf: %.tex
	@(cd $(INCLUDE_DIR) && $(MAKE))
	pdflatex --shell-escape -synctex=1 $<

view: pdf
	xpdf $<
clean:
	@(cd $(INCLUDE_DIR) && $(MAKE) $@)
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	rm -f *.log; rm -f .*.log; rm -f *.out
	rm -f $(PDF)

.PHONY : clean view

