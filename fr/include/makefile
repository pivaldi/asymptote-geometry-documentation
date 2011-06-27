ASYCMD=asy -f pdf
ALL=asy
SRC= $(wildcard *.asy)
OBJ= $(SRC:.asy=.pdf)
TEX= $(SRC:.asy=.tex)

all: $(ALL)
asy: $(TEX) $(OBJ)

%.pdf: %.asy
	expr match $< 'vcolor[0-9]*.*' > /dev/null\
	|| $(ASYCMD) $<\
	&& touch $@

%.tex: %.asy
	pygmentize -f latex -o $@ $<
	sed -i '1d;$d' $@

clean:
	@rm -f *.eps; rm -f *.log; rm -f *.dvi

.PHONY : clean mrproper asy

mrproper: clean
	@rm -f *.pdf; rm -f *.tex