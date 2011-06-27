INCLUDE_DIR=include
SRC= $(wildcard *.tex)
PDF= $(SRC:.tex=.pdf)

all: pdf

pdf: $(PDF)

%.pdf: %.tex
	@(cd $(INCLUDE_DIR) && $(MAKE))
	pdflatex -shell-escape $<

view: pdf
	xpdf $<
clean:
	@(cd $(INCLUDE_DIR) && $(MAKE) $@)
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	 rm -f *.log; rm -f .*.log; rm -f *.out

.PHONY : clean view