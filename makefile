# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

all: Skilltree.pdf Skilltree-neato.pdf

Skilltree.pdf: Skilltree.dot
	dot -Tpdf -o $@ $^

Skilltree-neato.pdf: Skilltree.dot
	neato -Tpdf -o $@ $^
