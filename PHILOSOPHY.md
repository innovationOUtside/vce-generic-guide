# Philosophy

This repository attempts to provide a worflow for the production of OU virtual computing environment (VCE) guides that can be customised for different modules and differnt presentations of modules from generic, yet customisable, source documents and, where necessary, module specific compontents.

The workflow is based on a [Jupyter Book](https://jupyterbook.org/en/stable/intro.html) / Sphinx workflow, with source documents created using 'MyST flavoured markdwon](https://mystmd.org/).

Source documents may be considered to be of two main types:

- *generic documents* (`g-TOPIC.md`), containing content relevant to two or more modules;
- *module specific documents (`x-MODULECODE-TOPIC.md`), containing content specific to a particular module

All documents (generic and module specific) are customisable using substitution labels defined in the appropriate `config.yml` file as `myst_substitutions`. These include things like module code, module name and module presentation,

The intention is that guides are generated on per module, per presentation basis, each with its own `_config.yml` and `_toc.yml` file.

The workflow currently supports the generation of the following output formats:

- Jupyter Book interactive HTML book
- OU branded PDF
- OU-XML


## File naming conventions

The following conventions are suggested, and can be exploited in Sphinx `include_patterns` and `exclude_patterns` configuration settings:

- reusable (cross-module) content uses filemanmes of the form `g-TOPIC.md`
- module specific content uses filenames of the form `x-MODULECODE-TOPIC.md`

## Cross-document Referencing

The MyST parser supports referencing within and across documents. References can be made to headings, named figures and named tables.

*Within document* references should always resolve.

*Across document* references need to be managed more carefully:

- generic documents MAY refer to each other;
- module specific documents MAY refer to generic documents;
- module specific documents MAY refer to each other *within the same module*;
- generic documents SHOULD NOT refer to module specific documents.

Ideally, if content is reused across two or more modules, it should be produced as a generic customisable content file.

*We could increase the complexity of the source documents to include richer linking, conditional content, etc., but the intention is to try to limit the computational complexity of the source documents.*

