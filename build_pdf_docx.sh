#! /bin/bash

# Script for building output documents
# from sphinx/Jupyter Book souirce documents

# We can build a single PDF as a jupyter-book build command
# The pdflatex builder gives the nicest output so far
jb build . --builder pdflatex #builds to _build/latex
# The pdfhtml builder requires pyppeteer; naive install errors in container
#jb build . --builder pdfhtml #builds to _build/pdf


# XML build
jb build --builder custom --custom-builder xml . #builds to _build/xml
# OU-XML conversion
obt convert-to-ouxml . #builds to _build/ouxml

# We can also generate output docs from the singlehtml doc
# Source file - generated from jb singlehtml builder
SINGLE_PAGE_HTML="root.html"
jupyter-book build .  --builder singlehtml #builds to _build/singlehtml

cd _build/singlehtml

# Tidy up the HTML (based on improving the docx output)
sed -i.bak 's/\(<a class="reference internal" href="\)[^#]*\(#[^>]*">\)/\1\2/g' "$SINGLE_PAGE_HTML"
sed -i.bak 's/<a class="reference internal" href="#[^>]*"><span class="std std-numref">\([^<]*\)<\/span><\/a>/\1/g' "$SINGLE_PAGE_HTML"

pandoc -o tesguide_single_doc.pdf "$SINGLE_PAGE_HTML" # in _build/singlehtml
pandoc -o tesguide_single_doc.docx "$SINGLE_PAGE_HTML" #in _build/singlehtml

