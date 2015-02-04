# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

dot = $(wildcard *.dot)
dot_pdf = $(dot:.dot=-dot.pdf)
neato_pdf = $(dot:.dot=-neato.pdf)

all: $(dot_pdf) $(neato_pdf)

%-dot.pdf: %.dot
	dot -Tpdf -o $@ $^

%-neato.pdf: %.dot
	neato -Tpdf -o $@ $^
