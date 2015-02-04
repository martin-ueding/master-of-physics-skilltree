# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

dot = $(wildcard *.dot)
dot_pdf = $(dot:.dot=-dot.pdf)
neato_pdf = $(dot:.dot=-neato.pdf)

png = $(dot_pdf:.pdf=.png) $(neato_pdf:.pdf=.png)

all: $(dot_pdf) $(neato_pdf) $(png)

clean:
	$(RM) $(dot_pdf) $(neato_pdf) $(png)

%-dot.pdf: %.dot
	dot -Tpdf -o $@ $^

%-neato.pdf: %.dot
	neato -Tpdf -o $@ $^

%.png: %.pdf
	pdftoppm -png -singlefile -r 50 $^ $(@:.png=)
