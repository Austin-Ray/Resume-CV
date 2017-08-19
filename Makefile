all: latex pdf-to-png

latex:
	latexmk -xelatex -synctex=1 resume.tex

pdf-to-png:
	convert -flatten -density 300x300 resume.pdf -quality 100 -resize x3000 images/resume.png
