# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

all: Skilltree-Bachelor-2006.pdf Skilltree-Master-2014.pdf


%.pdf: %.dot
	dot -Tpdf -o $@ $^
