# vce-generic-guide

Source repository for creating OU virtual computing environment guidance on a module and presentation basis from generic, customisable, and bespoke source documents. *See [`PHILOSOPHY.md`](PHILOSOPHY.md) for more details, including filenaming conventions.*

Example module configurations can be found in the [`buildpack`](buildpack/) directory, with a subdirectory containing the configuration and output files for each separate module. For example, the build files for TM351 are in `./buildpack/tm351`.

To build files for a module, run: `./build_pdf_docx.sh MODULECODE` (for example, `./build_pdf_docx.sh tm351`). The files are built into `./buildpack/MODULECODE/genarated/` (for example, `./buildpack/tm351/generated/`)

## Using With .devcontainer

A legacy `.devcontainer` is defined using legacy tools but that does still build. You should be able to lanch this repo with the devcontainer either locally or in GitHun Codespaces.

For the TM351-2J presentation the buildpack is in `buildpack/tm351-minimal`. Build the PDF as:

```bash
# Build unbranded PDF
./build_pdf_docx.sh tm351-minimal
# Creates ./buildpack/tm351-minimal/generated/tm351-minimal.pdf

# Missing dependencies for logo tool
pip install ou-print-pack-tools lxml_html_clean

#Add logo using https://github.com/innovationOUtside/ou-print-pack-tools
ou_pdf_brandify -o buildpack/tm351-minimal/_generated -s 0.2
# Generates ./buildpack/tm351-minimal/_generated/tm351-minimal-logo.pdf
```

## Branches

The `generic` branch includes an original draft of a generic guide for OU virtual computing environment (VCE) users (OpenComputing Lab, local containers) deployed with the classic Jupyter notebook UI as a the default UI. __This branch should be regarded as deprecated.__

The `customisable` branch replaces the `generic` approach with a template that can be customised for a particular module and presentation. A new guide will need to be rendered for each module presentation. The guide will contain specific guidance on how to access or install the particular VCE required for that module for a particular presentation.

The `main` branch is updated from the `customisable` branch, although it may lag behind it.

In the first iteration of the `customisable` guide, there will be legacy example screenshots. Ideally, we would be able to customise screenshots either through image editing, rendering an image from a dummy customisable UI, or by automatically screengrabbing the actual environment for a particular module and presentation.

The guide is written using MyST markdown in a Jupyter Book context. Interactive HTML, PDF and Microsoft Word documents, etc., can be generated from the source files.

The intention is that the guide for a particular module will be generated using custom `_toc.yml` and `_config.yml` files that will then reuse common source files. See the [`buikdpack`](./buildpack) directory for example `_toc.yml` and `_config.yml` packs for particular modules. Ideally, for a new module, these are the *only* things that should need changing, other than any module specific materials that need to be produced.

An OU-XML workflow is also available using Mark Hall's [`ou-book-theme`](https://pypi.org/project/ou-book-theme/) package. This generates OU-XML from XML produced by the Jupyter Book xml builder.

## Generating distributable guides

The `.devcontainer` associated with this repository should contain everything you need to generate Jupyter Book, OU-XML and simple PDF rendered versions of Jupyter Book content.

The `.devcontainer` can be launched locally (e.g. within VS Code from a cloned version of this repository, or within GitHub Codespaces. *If your GitHub preferences are set to open Codespaces in  JupyterLab, you may get an error when the Codespace is launch. Select the presented option to open in VS Code instead.*

See [`BUILD.md`](BUILD.md) for more details on the build process.

A GitHub Action, [`builder.yaml`](.github/workflows/builder.yaml), is also defined that supports manually launched workflows that allow you to generate the output documents for a selected module. The generated documents can be downloaded from the action run report page as an action artifact.

## Quality Processes

Spellchecking carried out using [`spellchecker-cli`](https://github.com/tbroadley/spellchecker-cli):

- install: `npm install spellchecker-cli`
- run: `spellchecker --files  *.md --generate-dictionary vce_dictionary.txt` ; this also generates a file `vce_dictionary.txt` containing all identified typos.
- ignore typos in custom dictionary: `spellchecker --files  *.md --dictionaries vce_dictionary.txt`
