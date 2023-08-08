# vce-generic-guide

Source repository for creating OU virtual computing environment guidance on a module and preseantion basis from generic, customisable, and bespoke source documents. *See [`PHILOSOPHY.md`](PHILOSOPHY.md) for more details, including filenaming conventions.*

Example module configurations can be found in the [`buildpack`](buildpack/) directory.

## Generating distributable guides

The `.devcontainer` associated with this repository should contain everything you need to generate Jupyter Book, OU-XML and simple PDF rendered versions of Jupyter Book content.

The `.devcontainer` can be launched locally (e.g. within VS Code from a cloned version of this repositoiry, or within GitHub Codespacee. *If your GitHub preferences are set to open Codespaces in  JupyterLab, you may get an error when the Codespace is launch. Select the presented option to open in VS Code instead.*

See [`BUILD.md`](BUILD.md) for more details on the build process.

## TO DO

- GitHub Action to generate downloadable assets for a particular module.
