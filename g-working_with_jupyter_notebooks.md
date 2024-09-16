# Working With Jupyter Notebooks

Jupyter notebooks are interactive documents that combine editable "content" cells, which may contain structured content written using markdown formatted text, executable "code" cells and executed code cell outputs within a single document.


## Installed Extensions

The Jupyter environments used in OU VCEs are modified using a range of custom and third party developed extensions. If you want to recreate elements of the OU VCEs, these extensions can be installed in other Jupyter environments.

The [`jupyterlab_ou_brand_extension`](https://github.com/innovationOUtside/jupyterlab_ou_brand_extension) adds OU logos to the JupyterLab environment, {numref}`jl_branding`.


```{figure} md_assets/media/ou_jl_branding.png
:name: jl_branding
:width: 5.772370953630796in

JupyterLab environment with OU branding

A screenshot of the JupyterLab environment that is branded with an OU logo in the top left hand corner of the JupyterLab user interface and an Open University logo as the icon for a browser tab that displays the JupyterLab interface.
```

The [`jupyterlab_empinken_extension`](https://github.com/innovationOUtside/jupyterlab_empinken_extension) supports four thematically coloured background cells that indicate how to interpret different sections of a notebook, as shown in {numref}`jl_empinken`. Cell backgrounds are persistent and are toggled from notebook toolbar buttons.

- *activity* (blue): cells that describe activities or exercises;
- *learner* (yellow): cells that students are expected to modify as part of their learning or assessment.;
- *tutor* (pink): important information, or text added as feedback by a tutor on assessed material;
- *solution/success* (green): used to indicate a worked solution or successful outcome.

```{figure} md_assets/media/empinken-new-buttons.png
:name: jl_empinken
:width: 5.772370953630796in

A screenshot of "empinken" extension coloured background cells, used to identify different cell roles.

Four coloured cell types (both markdown and code cells) are shown: blue, yellow, pink and green.

```

The toggle buttons can be individually enabled / disabled; the colours applied to each cell type are also user customisable via user settings as shown in {numref}`jl_empinken_prefs`.

```{figure} md_assets/media/empinken_jl_prefs.png
:name: jl_empinken_prefs
:width: 5.772370953630796in
Screenshot of empinken extension user settings

Options are shown that allow a user to control whether a toolbar button is displayed, whether particular cell backgrounds are rendered, and the colour used to render each background.

```

The [`jupyterlab_cell_status_extension`](https://github.com/innovationOUtside/jupyterlab_cell_status_extension) provides visual and/or audible indications of the cell run status. The visual indications shown in {numref}`jl_cell_status_indicators` highlight a successfully run cell, a run cell that resulted in an error and a queued/currently running cell. An optional animated "cell flash" effect highlights a code cell that has just completed execution.

```{figure} md_assets/media/cell_status_jl.png
:name: jl_cell_status_indicators
:width: 4in

Cell status indications

Screenshot showing code cells with different cell run status indications: green (success), red (failure), light blue (awaiting execution).

```

This extension also supports a range of audible alerts that signal successful or unsuccessful cell execution, as well as spoken error messages.

*For further information the audio accessibility features, as well as guidance on changing the settings, see {numref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility` {ref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility`.*

## Enriched Display

The Jupyter environments provide a dynamically generated table of contents listing for notebooks from the left hand sidebar palette, {numref}`jl_contents`.

```{figure} md_assets/media/jl_content_list.png
:name: jl_contents
:width: 5.772370953630796in

JupyterLab notebook table of contents

Sidebar showing a table of contents navigation tool generated from the headings in a selected open notebook.

```

<!-- {% if use_notebook_v7 %} -->
*In the Jupyter Notebook v7 environment, open the table of contents from the Notebook `View -> Table of Contents` menu (`shift-command-k` keyboard shortcut).*
<!-- {% endif %} -->

The table of contents offers two main benefits:

- it provides an overview of the whole document and signposts key, headed elements within it;

- it provides an effective way of navigating to different parts of the document.

The [`executablebooks/jupyterlab-myst`](https://github.com/executablebooks/jupyterlab-myst) extension supports the rendering of enriched MyST flavoured markdown from notebook markdown cells [[docs](https://mystmd.org/guide/quickstart-jupyter-lab-myst)].

For example, the following MyST styled admonition block will be rendered as shown in {numref}`jl_myst_warning`:

`````text
```{warning}
This is a warning block.
```
`````

```{figure} md_assets/media/warning_admonition.png
:name: jl_myst_warning
:width: 4in

Example of a warning admonition

Screenshot showing how a triple backticked warning block is rendered with a warning icon and a cream coloured border between two otherwise unstyled markdown blocks.

```

Other blocks include `danger` (red header bar), `note` (blue), `seealso` (lilac), `important` (light grey-green) and `tip` (light green). The header bars also carry distinguishing leading icons. Using the `{admonition} My Title` style block, a title can be added to the block and styled using the appropriate admonition type set as a `:class:` value. For example, the following block will be rendered as shown in {numref}`jl_myst_warning_title`

`````text
```{admonition} Take this as a warning!
:class: warning

This is a warning block.
```
`````

```{figure} md_assets/media/warning_admonition_title.png
:name: jl_myst_warning_title
:width: 4in

MyST syntax admonition block with a title, styled as a warning,m betewwen two otherwise unstyled markdown blocks.

```

```{admonition} Complete MyST Syntax Guide
:class: seealso

The [full MyST syntax](https://mystmd.org/guide/quickstart-myst-markdown) supports various other rich presentation features, such as panels and tabs, rendering support for which may also become available in JupyterLab notebok editors through future updates to the extension.

```

The JupyterLab and MyST markdown parsers also support simple diagramming using [mermaid.js](https://mermaid.js.org/intro/) scripts:

`````text
```{mermaid}

graph LR;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
    D-->E;
```
`````

The rendered cell then displays the corresponding mermaid rendered image, {numref}`jl_mermaid`:

```{figure} md_assets/media/mermaid_diag.png
:name: jl_mermaid
:width: 5.772370953630796in

Example of a rendered mermaid diagram.

Screenshot showing a simple box and arrows chart flowing left to right. A box labeled A is connected by lines and arrows to two boxes, B and C. Boxes B and C are then connected to box D, which in turn is connected to a box E.
```

Being able to *write* diagram descriptions within a markdown cell that are then automatically rendered provides an accessible, text-based way for creating (and editing) diagrams. It removes the need for graphical image editors and can simplify the process of diagram creation. Access to the raw "source code" of the diagram also allows tutors to modify or extend diagrams, as well as easily create and share their own diagrams back with students. See the [`mermaid.js` documentation](https://mermaid.js.org/intro/) for a full description of available diagram types.

```{include} ./g-jupyter-notebook-gotchas.md
```
