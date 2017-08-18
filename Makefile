all:
	latexmk -xelatex -synctex=1 resume.tex
	convert resume.pdf images/resume.png
