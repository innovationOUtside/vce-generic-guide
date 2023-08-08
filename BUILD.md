# Building the Guide

The guide can be built into different output formats as required. such as Microsoft Word (`docx`), `OU-XML`, or `HTML` book.

A script to generate the following assets can be run from the command line as: `./build_pdf_docx.sh`

- Jupyter Book html (built into `buildpack/MODULE/_generated/html`)
- PDF (built into `buildpack/MODULE/_generated/MODULE_logo.pdf`)
- OU-XML (built into `buildpack/MODULE/_generated/ouxml`)

## Microsoft Word

Trying to publish the Jupyter book content rendered from MyST markdown seems a bit fraught.

The following workaround generates some sort of Microsoft Word document but it's not ideal:

```bash
# Build a single HTML page bview of the book
jupyter-book build . --builder singlehtml 

# cd into the book dir
cd _build/singlehtml

# Render the docx
pandoc -o user_guide.docx ROOT.html

```

## OU-XML

Mark Hall's `ou-book-theme` package can transform Sphinx XML to OU-XML.

Generate XML docs (Docutils-native XML files): `jb build --builder custom --custom-builder xml .`

This builds XML docs into `./_build/xml`

CLI command:

`obt --help`

Convert to OU-XML:

NB - there are some file path elements we need to remove for generating the monolithic OU-XML - i.e. we can drop the file references before the `#`, as in the `build_pdf_docx.sh` processor.

At the moment, the builder doesn't add `id` values to `<InternalSection>` elements; adding them manually seems to work ok.

`obt convert-to-ouxml .`

Resulting file is in `./_build/ouxml`

TO DO - tidy up: replace `</ComputerCode><ComputerCode>` with nothing??

## Running in devcontainer

There is a `.devcontainer` confguration in this repository that loads a prebuilt container (`outm351dev/ou-doc-builder`) containing everything necessary to generate all output assets. *(A `Dockerfile` describing the image is also provided in the `.devcontainer` directory.)*

The `.devcontainer` can be used to build assets locally, e.g. in using VS Code, or in VS Code running in GitHub Codespaces.

## Building a Docker Image

To build and export the `.devcontainer` Docker image:

`docker buildx build -f .devcontainer/Dockerfile --platform linux/amd64,linux/arm64 . --tag  outm351dev/ou-doc-builder --push`
