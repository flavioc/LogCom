
all: paper.pdf

paper.pdf: paper.tex intro.tex \
		language.tex linear.tex \
		hld.tex related_work.tex \
		refs.bib lld.tex lld-comprehensions.tex \
		soundness.tex termequiv.tex \
		wellformedframes.tex \
		bodymatch.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f paper.pdf *.aux *.blg *.bbl *.out *.brf *.log
