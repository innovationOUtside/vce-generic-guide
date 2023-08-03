#! /bin/bash

# Script for building output documents
# from sphinx/Jupyter Book souirce documents

# We can build a single PDF as a jupyter-book build command
# The pdflatex builder gives the nicest output so far
jb build . --builder pdflatex #builds to _build/latex
jb build . --builder pdfhtml #builds to _build/pdf

# We can also generate output docs from the singlehtml doc
# Source file - generated from jb singlehtml builder
SINGLE_PAGE_HTML="root.html"
jupyter-book build .  --builder singlehtml _build/singlehtml

cd _build/singlehtml

# Tidy up the HTML (based on improving the docx output)
sed -i.bak 's/\(<a class="reference internal" href="\)[^#]*\(#[^>]*">\)/\1\2/g' "$SINGLE_PAGE_HTML"
sed -i.bak 's/<a class="reference internal" href="#[^>]*"><span class="std std-numref">\([^<]*\)<\/span><\/a>/\1/g' "$SINGLE_PAGE_HTML"

pandoc -o test_guide_single_doc.pdf "$SINGLE_PAGE_HTML" # in _build/singlehtml
pandoc -o test_guide_single_doc.docx "$SINGLE_PAGE_HTML" #in _build/singlehtml

