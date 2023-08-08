#! /bin/bash

# Script for building output documents
# from sphinx/Jupyter Book souirce documents

# Hack until devcontianer is updated
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

rm -r $BUILDPACK/$OUT/
mkdir -p $BUILDPACK/$OUT/

JB_BUILD="jb build . --config $CONFIG --toc $TOC" # --path-output $OUT"

echo "Using base command: $JB_BUILD"

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
obt convert-to-ouxml . #builds to _build/ouxml

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
ou_nb_brandify -o $BUILDPACK/$OUT -y 2023

# Single page cribsheet
jb build . --config $CONFIG --toc buildpack/default/_toc_cribsheet.yml --builder pdflatex
pdfsak --input-file _build/latex/book.pdf --output $BUILDPACK/$OUT/${MODULE}_cribsheet.pdf --extract-pages "5"

