# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

Skilltree.pdf: Skilltree.dot
	dot -Tpdf -o $@ $^
