#!/bin/bash
# Copyright © 2014 Martin Ueding <dev@martin-ueding.de>

set -e
set -u

pdfcrop Mastermodule.pdf crop.pdf
pdftk A=crop.pdf cat Aeast output rotated.pdf
pdftoppm -singlefile -scale-to 8000 -png rotated.pdf raster
