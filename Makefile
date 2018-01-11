all: latex pdf-to-png

latex:
	latexmk -xelatex -synctex=1 resume.tex

pdf-to-png:
	convert -page letter -density 300x300 resume.pdf -quality 100 -append images/resume.png
