

#Pattern matching

%.html : %.md
	pandoc -f markdown+smart --standalone --toc --to html5 -o $@ $<

%.pdf : %.md
	pandoc -f markdown+smart --standalone --toc -V geometry:margin=.9in -o $@ $<


all : index.html index.pdf

clean:
	rm index.html index.pdf
