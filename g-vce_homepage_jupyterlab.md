# Using the VCE

When the VCE is fully initialised, you will see a default JupyterLab environment layout similar to that shown in {numref}`jupyterlab_home`.

```{figure} md_assets/media/jupyterlab_ui.png
:name: jupyterlab_home
:width: 5.772370953630796in

The JupyterLab user interface

A screenshot of the JupyterLab interactive development environment (IDE) syle user interface, showing a file browser sidebar, document and application launcher, opened document and terminal editors and a menu toolbar.

```

JupyterLab provides an integrated development environment (IDE) that provides access to a file browser and a wide range of file editors, including a fully featured Jupyter notebook editor.

The JupyterLab environment distributed as part of the VCE includes several pre-installed JupyterLab extensions that enhance the usability of the environment to support your studies.

```{note}
The JupyterLab extensions that have been preinstalled into the VCE may differ from module to module.

Some modules may distribute a "JupyterLab configuration pack" as a separately installable Python package. Such packages can be used to extend your own JupyterLab environment outside of the VCE in a way that matches the customisation of the environment within the VCE.

For example, the Jupyterlab environment in the TM351 VCE is extended using the Python package [`ou-tm351-jl-extensions`](https://pypi.org/project/ou-tm351-jl-extensions/).

```

## Visual Design of Environments

The JupyterLab environment used in OU VCEs is typically modified using several extensions:

- [`innovationOUtside/jupyterlab_ou_brand_extension`](https://github.com/innovationOUtside/jupyterlab_ou_brand_extension)

This extension adds OU logos to the JupyterLab environment, {numref}`jl_branding`; *(the favicon has been updated to the new OU logo since the screenshot below was taken)*:

```{figure} md_assets/media/ou_jl_branding.png
:name: jl_branding
:width: 5.772370953630796in

JupyterLab environment with OU branding

A screenshot of the JupyterLab environment that is branded wiuth an OU logo in the top left hand corner of the JuptyerLab user interface and an pen University logo as the icon for a browser tab that displays the JupyterLab interface.
```

Part of the reason for using an OU branded JupyterLab environment is to give you the sense of a "place to go" when working on VCE based activities or materials. You should follow appropriate behaviour when working inside the environment, particularly if the documents that are produced are shared with others, either through live collaboration, or sumnitted as assessment materials.

- [`innovationOUtside/jupyterlab_empinken_extension`](https://github.com/innovationOUtside/jupyterlab_empinken_extension)

This extension supports four thematically coloured background cells that identify how to interpret different sections of a notebook, {numref}`jl_empinken`. Cell backgrounds are persistent and are toggled from notebook toolbar buttons.

- *activity* (blue): cells that describe activities or exervcies;
- *learner* (yellow): calls yo action, where you are expected to modify the cell contents;
- *tutor* (pink): warning text, or text added as feedback by a tutor on assessed material;
- *solution/success* (green): occasionally used to signify a "correct" answer to a task. 

```{figure} md_assets/media/empinken_jl.png
:name: jl_empinken
:width: 5.772370953630796in

A screenshot of "empinken" extension coloured background cells, used to identify differnt cell roles.

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

This extension provides a visual indication of the cell run status, {numref}`jl_cell_status_indicator`. It highlights queued/currently running cells, successfully run cells and run cells that errored:

```{figure} md_assets/media/cell_status_jl.png
:name: jl_cell_status_indicator
:width: 4in

Cell status indications

Screenshot showing code cells with different cell run statius indications: gree (success), red (failure), light blue (awaiting execution).

```

*A separate, off the shelf extension, [`jupyterlab-contrib/jupyterlab-cell-flash`](https://github.com/jupyterlab-contrib/jupyterlab-cell-flash) can be used to provide an animated "flash" effect to highlight a cell that has just completed execution).*


## Enriched Display

The JupyterLab environment provides a dynamically generated table of contents listing for notebooks from the left hand sidebar palette, {numref}`jl_contents`:

```{figure} md_assets/media/jl_content_list.png
:name: jl_contents
:width: 5.772370953630796in

JupyterLab notebook table of contents

Sidebar showing a table of contents navigation tool generated from the headings in a selected open notebook.

```

The table of contents offers two main benefits:

- it provides an overview of the whole document and signposts key, headed elements within it;

- it provides an effective way of navigating to different parts of the document.

Several extensions support the rendering of enriched markdown in JupyterLab and RetroLab notebooks, powered by the [`agoose77/jupyterlab-markup`](https://github.com/agoose77/jupyterlab-markup) package. These include:

The [`executablebooks/jupyterlab-myst`](https://github.com/executablebooks/jupyterlab-myst) extension supports the rendering of enriched MyST flavoured markdown from notebook markdown cells [[docs](https://mystmd.org/guide/quickstart-jupyter-lab-myst)]. This includes styled admonition blocks, to do lists, and the rendering of diagrams defined using `mermaid.js` syntax [[docs](https://mystmd.org/guide/diagrams)]. 


For example, the following MyST styled admonition block will be rendered as show in {numref}`jl_myst_warning`:

`````
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

Other blocks include `danger` (red header bar), `note` (blue), `seealso` (lilac), `important` (light grey-green) and `tip` (light green). The header bars also carry distinguishing leading icons. Using the `{admonition} My Title` style block, a title can be added to the block and the can be styled using the appropriate admonition type set as a `:class:` value. For example, the following block will be rendered as show in {numref}`jl_myst_warning_title`

`````
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

MyST also supports simple diagramming using [mermaid.js](https://mermaid.js.org/intro/) scripts:

`````
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

Being able to *write* diagrams that are then automatically rendered provides an accessible, text-based way for creating (and editing) diagrams. It removes the need for graphical image editors and can simplify the process of diagram creation. Access to the raw "source code" of the diagram also allows tutors to modify or extend diagrams, as well as easily create and share their own diagrams back with students.

## File Management

If you are working in a local VCE environment, you can used a shared folder to mount files directly from your deskop/host environment into the VCE and then save any changes back to the desktop environment.

However, accessing materials that would you like to save on your personal machine from a hosted enviroment, or accessing materials from one or more devices, presents a significant challenge if we are to prevent inconsistencies arising in the files that are being worked on.

The [`jupyterlab-contrib/jupyter-archive`](https://github.com/jupyterlab-contrib/jupyter-archive) extension provides a convenient way of downloading and zipping files from a selected directory, {numref}`jl_download_archive`.

```{figure} md_assets/media/jl_download_archive.png
:name: jl_download_archive
:width: 4in

Download a folder as a zipped file archive.

Screenshot of context sensitive menu for file directory, with "Download Current Folder as Archive" option selected.

```

This works for local and hosted environments and provides a convenient way to save the contents of a working TMA related directory, for example, for use as a submission to the ETMA system.

## Launcher Buttons

Buttons for proxied applications used in a module can be added to the Launcher and used to launch the applications in new windows, {numref}`jl_launcher_buttons`.

```{figure} md_assets/media/jl_launcher_buttons.png
:name: jl_launcher_buttons
:width: 5.772370953630796in

The JupyterLab application and new document launcher. *Options may vary by VCE.*

Screenshot showing three launcher buttons: Python3 (ipykernel) notebook, nbsearch and OpenRefine.

```
