INCLUDE_DIR=include
SRC= $(wildcard *.tex)
PDF= $(SRC:.tex=.pdf)

LATEX=pdflatex
LATEX_OPT=--shell-escape -synctex=1

all: pdf

quick: geometry_en.tex
	$(LATEX) $(LATEX_OPT) $<

pdf: $(PDF)

%.pdf: %.tex
	@(cd $(INCLUDE_DIR) && $(MAKE))
	$(LATEX) $(LATEX_OPT) $<
	makeindex $(<:.tex=.idx)
	$(LATEX) $(LATEX_OPT) $<


$(SRC): pygmentizedformat/default.tex geometry-commomun.sty

pygmentizedformat/default.tex:
	mkdir -p pygmentizedformat/
	pygmentize -S default -f latex -a full > $@


view: pdf
	xpdf $<

clean:
	@(cd $(INCLUDE_DIR) && $(MAKE) $@)
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	rm -f *.log; rm -f .*.log; rm -f *.out; rm -f *.idx; \
	rm -f *.ind; rm -f *.ilg; rm -f *.synctex.gz

clean-all:
	make clean
	rm -rf pygmentizedformat/
	rm -rf vcolors
	rm -f $(PDF)

.PHONY : clean view clean-all

