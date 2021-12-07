INCLUDE_DIR=include
SRC= $(wildcard *.tex)
PDF= $(SRC:.tex=.pdf)

all: pdf

pdf: $(PDF)

%.pdf: %.tex
	@(cd $(INCLUDE_DIR) && $(MAKE))
	pdflatex --shell-escape -synctex=1 $<

$(SRC): pygmentizedformat/default.tex geometry-commomun.sty

pygmentizedformat/default.tex:
	mkdir -p pygmentizedformat/
	pygmentize -S default -f latex -a full > $@


view: pdf
	xpdf $<

clean:
	@(cd $(INCLUDE_DIR) && $(MAKE) $@)
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	rm -f *.log; rm -f .*.log; rm -f *.out
	rm -f $(PDF)

clean-all:
	make clean
	rm -rf pygmentizedformat/

.PHONY : clean view

