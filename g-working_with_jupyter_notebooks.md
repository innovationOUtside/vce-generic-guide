# Working With Jupyter Notebooks

The JupyterLab and Jupyter Notebook user interfaces both provide environments for working with Jupyter notebooks.

Jupyter notebooks are cell based interactive documents that combine editable "content" cells, which may contain structured content written using markdown formatted text, executable "code" cells and executed code cell outputs in a single document.

## Visual Design of Environments

The Jupyter environments used in OU VCEs are typically modified using several extensions:

- [`innovationOUtside/jupyterlab_ou_brand_extension`](https://github.com/innovationOUtside/jupyterlab_ou_brand_extension)

This extension adds OU logos to the JupyterLab environment, {numref}`jl_branding`; *(the favicon has been updated to the new OU logo since the screenshot below was taken)*:


```{figure} md_assets/media/ou_jl_branding.png
:name: jl_branding
:width: 5.772370953630796in

JupyterLab environment with OU branding

A screenshot of the JupyterLab environment that is branded with an OU logo in the top left hand corner of the JupyterLab user interface and an Open University logo as the icon for a browser tab that displays the JupyterLab interface.
```

Part of the reason for using an OU branded JupyterLab environment is to give you the sense of a "place to go" when working on VCE based activities or materials. You should follow appropriate behaviour when working inside the environment, particularly if the documents that are produced are shared with others, either through live collaboration, or submitted as assessment materials.

- [`innovationOUtside/jupyterlab_empinken_extension`](https://github.com/innovationOUtside/jupyterlab_empinken_extension)

This extension supports four thematically coloured background cells that identify how to interpret different sections of a notebook, {numref}`jl_empinken`. Cell backgrounds are persistent and are toggled from notebook toolbar buttons.

- *activity* (blue): cells that describe activities or exercises;
- *learner* (yellow): calls yo action, where you are expected to modify the cell contents;
- *tutor* (pink): warning text, or text added as feedback by a tutor on assessed material;
- *solution/success* (green): occasionally used to signify a "correct" answer to a task.

```{figure} md_assets/media/empinken-new-buttons.png
:name: jl_empinken
:width: 5.772370953630796in

A screenshot of "empinken" extension coloured background cells, used to identify different cell roles.

Four coloured cell types (both markdown and code cells) are shown: blue, yellow, pink and green.

```

The toggle buttons can be individually enabled / disabled; the colours applied to each cell type are also user customisable via user settings, {numref}`jl_empinken_prefs`:

```{figure} md_assets/media/empinken_jl_prefs.png
:name: jl_empinken_prefs
:width: 5.772370953630796in
Screenshot of empinken extension user settings

Options are shown that allow a user to control whether a toolbar button is displayed, whether particular cell backgrounds are rendered, and the colour used to render each background.

```

- [`innovationOUtside/jupyterlab_cell_status_extension`](https://github.com/innovationOUtside/jupyterlab_cell_status_extension)

This extension provides visual and/or audible indications of the cell run status, {numref}`jl_cell_status_indicators`. The visual indicator highlights queued/currently running cells, successfully run cells and run cells that errored:

```{figure} md_assets/media/cell_status_jl.png
:name: jl_cell_status_indicators
:width: 4in

Cell status indications

Screenshot showing code cells with different cell run status indications: green (success), red (failure), light blue (awaiting execution).

```

The optional audible alerts signal successful or unsuccessful cell execution, as well as spoken error messages.

A further optional setting can be used to provide an animated "cell flash" effect to highlight a code cell that has just completed execution.

*For further information on changing the settings, see {numref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility` {ref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility`.*

## Enriched Display

The Jupyter environments provide a dynamically generated table of contents listing for notebooks from the left hand sidebar palette, {numref}`jl_contents`.

```{figure} md_assets/media/jl_content_list.png
:name: jl_contents
:width: 5.772370953630796in

JupyterLab notebook table of contents

Sidebar showing a table of contents navigation tool generated from the headings in a selected open notebook.

```

*In the Jupyter Notebook v7 environment, open the table of contents from the Notebook `View -> Table of Contents` menu (`shift-command-k` keyboard shortcut).*

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

Other blocks include `danger` (red header bar), `note` (blue), `seealso` (lilac), `important` (light grey-green) and `tip` (light green). The header bars also carry distinguishing leading icons. Using the `{admonition} My Title` style block, a title can be added to the block and the can be styled using the appropriate admonition type set as a `:class:` value. For example, the following block will be rendered as shown in {numref}`jl_myst_warning_title`

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
