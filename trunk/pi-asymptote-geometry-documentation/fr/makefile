all: view

geometry_fr.pdf: geometry_fr.tex
	pdflatex -shell-escape geometry_fr.tex

view: geometry_fr.pdf
	xpdf geometry_fr.pdf
clean:
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	 rm -f *.log; rm -f .*.log; rm -f *.out; rm -f -R auto; rm -f tmp_.*

.PHONY : clean view