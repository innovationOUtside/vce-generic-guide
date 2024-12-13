#! /bin/bash

# Script for building output documents
# from sphinx/Jupyter Book souirce documents

# Hack until devcontainer is updated
pip install pdfsak

# TOC sand config files in buildpack/MODULE
# Run as something like:
# ./build_pdf_docx.sh default
# Outputs in: buildpack/MODULE/_generated

MODULE=${1:-default}
CONFIG=${2:-_config.yml}
TOC=${3:-_toc.yml}
OUT=${4:-./_generated}

BUILDPACK=buildpack/$MODULE
echo "Using config etc. in: $BUILDPACK"
echo "- config file: $CONFIG"
echo "- toc file: $TOC"
echo "- outputh path: $OUT"

cp -f $BUILDPACK/$TOC .
cp -f $BUILDPACK/$CONFIG .

# Make sure we don't accidentally use any stale files for another module
rm -r _build

rm -r $BUILDPACK/$OUT/
mkdir -p $BUILDPACK/$OUT/

# There is also an -all switch that forces rebuild
JB_BUILD="jb build . --config $CONFIG --toc $TOC" # --path-output $OUT"

echo "Using base command: $JB_BUILD"

# Single page cribsheet
jb build . --config $BUILDPACK/_config_cribsheet.yml --toc $BUILDPACK/_toc_cribsheet.yml --builder pdflatex
pdfsak --input-file _build/latex/book.pdf --output $BUILDPACK/$OUT/${MODULE}_cribsheet_logo.pdf --extract-pages "5"
#ou_pdf_brandify -o . -X 22 -Y 5 -S L -s 0.2
rm -r _build

# Default build of HTML book
$JB_BUILD

# We can build a single PDF as a jupyter-book build command
# The pdflatex builder gives the nicest output so far
$JB_BUILD --builder pdflatex #builds to _build/latex
# The pdfhtml builder requires pyppeteer; naive install errors in container
#jb build . --builder pdfhtml #builds to _build/pdf


# XML build
$JB_BUILD  --builder custom --custom-builder xml #builds to _build/xml


# OU-XML conversion
rm -rf _build/ouxml
obt convert-to-ouxml . #builds to _build/ouxml
zip -r $BUILDPACK/$OUT/$MODULE-ouxml.zip _build/ouxml

# We can also generate output docs from the singlehtml doc
# Source file - generated from jb singlehtml builder
SINGLE_PAGE_HTML="index.html"
$JB_BUILD --builder singlehtml #builds to _build/singlehtml

cd _build/singlehtml

# Tidy up the HTML (based on improving the docx output)
sed -i.bak 's/\(<a class="reference internal" href="\)[^#]*\(#[^>]*">\)/\1\2/g' "$SINGLE_PAGE_HTML"
sed -i.bak 's/<a class="reference internal" href="#[^>]*"><span class="std std-numref">\([^<]*\)<\/span><\/a>/\1/g' "$SINGLE_PAGE_HTML"

pandoc -o tesguide_single_doc.pdf "$SINGLE_PAGE_HTML" # in _build/singlehtml
pandoc -o tesguide_single_doc.docx "$SINGLE_PAGE_HTML" #in _build/singlehtml

cd ../..

cp -rf _build/html $BUILDPACK/$OUT/
cp -rf _build/ouxml $BUILDPACK/$OUT/
cp _build/latex/book.pdf $BUILDPACK/$OUT/$MODULE.pdf

# Brand PDF
ou_pdf_brandify -y 2024 -o $BUILDPACK/$OUT -S C -s 0.2


