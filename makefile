# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

all: Skilltree-Bachelor-2006-dot.pdf Skilltree-Master-2014-dot.pdf Skilltree-Master-2014-neato.pdf

%-dot.pdf: %.dot
	dot -Tpdf -o $@ $^

%-neato.pdf: %.dot
	neato -Tpdf -o $@ $^
