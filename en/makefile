all: view

geometry_en.pdf: geometry_en.tex
	pdflatex -shell-escape geometry_en.tex

view: geometry_en.pdf
	xpdf geometry_en.pdf
clean:
	rm -f *.asy; rm -f *.aux; rm -f *.dvi; rm -f *.toc; rm -f *.html;\
	 rm -f *.log; rm -f .*.log; rm -f *.out; rm -f -R auto; rm -f tmp_.*

.PHONY : clean view