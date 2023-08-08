# vce-generic-guide

Source repository for creating OU virtual computing environment guidance on a module and preseantion basis from generic, customisable, and bespoke source documents. *See [`PHILOSOPHY.md`](PHILOSOPHY.md) for more details, including filenaming conventions.*

Example module configurations can be found in the [`buildpack`](buildpack/) directory.

## Branches

The `generic` branch includes an original draft of a generic guide for OU virtual computing environment (VCE) users (Compute Home, local Docker containers) deployed with the classic Jupyter notebook UI as a the default UI. __This branch should be regarded as deprecated.__

The `customisable` branch replaces (currently: *will replace*) the `generic` approach with a generic template that can be customised for a particular module and presentation. A new guide will need to be rendered for each module presentation. The guide will contain specific guidance on how to access or install the particular VCE required for that module for a particular presentation.

The `main` branch is updated from the `customisable` branch, although it may lag behind it.

In the first iteration of the `customisable` guide, there will be legacy example screenshots. Ideally, we would be able to customise screenshots either through image editing, rendering an image from a dummy customisable UI, or by automatically screengrabbing the actual environment for a particular moduile and presentation.

The guide is written using MyST markdown in a Jupyter Book context. Interactive HTML, PDF and Microsoft Word documents, etc., can be generatated from the source files.

The intention is that the guide for a particular module will be generated using custom `_toc.yml` and `_config.yml` files that will then reuse common source files.

An OU-XML workflow is also available using Mark Hall's [`ou-book-theme`](https://pypi.org/project/ou-book-theme/) package. This generates OU-XML from XML produced by the Jupyter Book xml builder.

## Generating distributable guides

The `.devcontainer` associated with this repository should contain everything you need to generate Jupyter Book, OU-XML and simple PDF rendered versions of Jupyter Book content.

The `.devcontainer` can be launched locally (e.g. within VS Code from a cloned version of this repositoiry, or within GitHub Codespacee. *If your GitHub preferences are set to open Codespaces in  JupyterLab, you may get an error when the Codespace is launch. Select the presented option to open in VS Code instead.*

See [`BUILD.md`](BUILD.md) for more details on the build process.

## TO DO

- GitHub Action to generate downloadable assets for a particular module.
