# vce-generic-guide

Generic guidance on using hosted and local VCE.

The `generic` branch includes an original draft of a generic guide for OU virtual computing environment (VCE) users (Compute Home, local Docker containers) deployed with the classic Jupyter notebook UI as a the default UI. __This branch should be regarded as deprecated.__

The `customisable` branch replaces (currently: *will replace*) the `generic` approach with a generic template that can be customised for a particular module and presentation. A new guide will need to be rendered for each module presentation. The guide will contain specific guidance on how to access or install the particular VCE required for that module for a particular presentation.

In the first iteration of the `customisable` guide, there will be legacy example screenshots. Ideally, we would be able to customise screenshots either through image editing, rendering an image from a dummy customisable UI, or by automatically screengrabbing the actual environment for a particular moduile and presentation.

The guide is written using MyST markdown in a Jupyter Book context. Interactive HTML, PDF and Microsoft Word documents, etc., can be generatated from the source files.

The intention is that the guide for a particular module will be generated using custom `_toc.yml` and `_config.yml` files that will then reuse common source files.

An OU-XML workflow is also available using Mark Hall's [`ou-book-theme`](https://pypi.org/project/ou-book-theme/) package. This generates OU-XML from XML produced by the Jupyter Book xml builder.

TO DO: create a dev container and example CI automation to render assets and generate OU-XML files from customised `_toc.yml` and `_config.yml` files.
