ASYCMD=asy -f pdf -tex pdflatex
ALL=asy
SRC= $(wildcard *.asy)
OBJ= $(SRC:.asy=.pdf)
TEX= $(SRC:.asy=.tex)

all: $(ALL)
asy: $(TEX) $(OBJ)

%.pdf: %.asy
	$(ASYCMD) $<

%.tex: %.asy
	../../bin/pygmentize-wraper.sh $<

clean:
	@rm -f *.eps; rm -f *.log; rm -f *.dvi

.PHONY : clean mrproper asy

mrproper: clean
	@rm -f *.pdf; rm -f *.tex
