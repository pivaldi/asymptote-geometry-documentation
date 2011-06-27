ASYCMD=asy -f pdf
EXEC=asy
SRC= $(wildcard *.asy)
OBJ= $(SRC:.asy=.pdf)

all: $(EXEC)

asy: $(OBJ)
# expr match $@ 'vcolor[0-9]*.*' > /dev/null || $(ASYCMD) $<

%.pdf: %.asy
	expr match $< 'vcolor[0-9]*.*' > /dev/null || $(ASYCMD) $<

# clean:
# 	rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
# 	 rm -f *.log; rm -f .*.log; rm -f *.out; rm -f -R auto; rm -f tmp_.*

# .PHONY : clean view