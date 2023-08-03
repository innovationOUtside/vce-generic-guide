# Building the Guide

The guide can be built into different putput formats as required. such as Microsoft Word (`docx`), `OU-XML`, or `HTML` book.

## Microsoft Word

Trying to publish the Jupyter book content rendered from MyST markdown seems a bit fraught.

The following workaround generates some sort of Microsoft Word document but it's not ideal:

```bash
# Build a single HTML page bview of the book
jupyter-book build . --builder singlehtml 

# cd into the book dir
cd _build/singlehtml

# Render the docx
pandoc -o user_guide.docx introduction.html

```

## OU-XML (broken)

Mark Hall's `ou-book-theme` package can transform Sphinx XML to OU-XML.

Generate XML docs (Docutils-native XML files): `jb build --builder custom --custom-builder xml .`

This builds XML docs into `./_build/xml`

CLI command:

`obt --help`

Convert to OU-XML:

`obt convert-to-ouxml .`

Resulting file is in `./_build/ouxml`
