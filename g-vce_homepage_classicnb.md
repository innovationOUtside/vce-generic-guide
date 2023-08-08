# Using the VCE

When the VCE is fully initialised, you will see the contents page for the Jupyter notebook environment as shown in {numref}`jupyter_classic_nb_home`.

```{figure} md_assets/media/image4.png
:name: jupyter_classic_nb_home
:width: 5.772370953630796in

The Jupyter notebook contents page

A screenshot showing a classic Jupyter notebook homepage with a single content directory displayed.

```

The exact contents of this page depends on the module. For example, {numref}`example_classic_nb_listing`) shows the initial contents page for the module TM129. Click on a folder to see the file contents within it. Notebooks are self-contained and should be worked through in order. You will be directed to appropriate notebooks from the study planner or module materials as you work your way through the module.

```{figure} md_assets/media/image5.png
:name: example_classic_nb_listing
:width: 5.772419072615923in
:height: 5.0320691163604545in

Notebook directory listing organised by study week

A screenshot of a classic Jupyter notebook home page file listing show directories in the content/ directory path. Multiple directories are listed in alphanumeric order. The directory names indicate the study week number and the general topic of study for that week. For example, "04. Not quite intelligent robots".

```

## First steps when using the VCE

Many VCEs will include a `READ_ME_FIRST.ipynb` notebook in the `content/` folder that can be used test the VCE installation. You are advised to work through any such notebook.

To leave the Compute Home hosted VCE, click the *Logout* link towards the top right-hand corner of the page. This will shut down the VCE, saving your work before it does so. You will also be automatically logged out of the hosted VCE after a period of inactivity.

When you return to the VCE and reopen a notebook, you will find your work saved from your previous sessions, although you may find you that a new kernel session has been started (see [](g-notebook_gotchas)).

At the end of each block, or whenever you have submitted notebook related assessement material, we **strongly** recommend that you download a copy of the completed Jupyter notebooks. On completion of the module, you may lose access to the hosted VCE and your hosted work files. To keep access to any changes you have made to your notebooks, you will need to download copies of them to your own computer.

## Non-appearance of notebooks in the local VCE

In the local VCE, if the classic Jupyter notebook server application is not available at its default address, there are three possibilities:

1. the application is *not* running

2. the application *is* running, *but* on an incorrectly configured port inside the VCE

3. the application *is* running, and on the correct port, *but* the port or the proxy used to expose it is being blocked in some way (for ewxample, by an overly aggressive anti-virus or firewall package).

See [](g-troubleshooting) for more information.

## Using the classic Jupyter notebook environment

The primary user interface for the the {{MCODE}} ({{PCODE}})  VCE is the classic Jupyter notebook home page, {numref}`nb_classic_homepage`.

```{figure} md_assets/media/nb_classic_homepage.png
:name: nb_classic_homepage
:alt: A screenshot of a computer Description automatically generated with low confidence
:width: 5.772222222222222in
:height: 1.851388888888889in

Classic Jupyter notebook homepage

A screenshot of the Jupyter notebook home page showing a single directory called "content". A label on the screenshot reads: "Any additional files or directories found in the mounted directory will also be listed".

```

You will typically access the VCE related activities through the notebook home page. If the VCE has been preloaded with notebook materials, you should see a `content` folder. Click on the 'content' folder. Notebooks will typically be organised by block, unit, study week or topic and may be grouped into corresponding folders.

The listing should also include a notebook called `READ_ME_FIRST.ipynb`.
Click on that notebook to open it. Follow the instructions contained therein to test your VCE installation.

When you open a new Jupyter notebook, it creates a new programming environment kernel (for example, a Python or R code environment). The kernel attached to a notebook executes the code contained within that notebook. Code executed in one notebook is isolated from code executed in every other notebook, unless you have open the same notebook in multiple tabs.

The notebook execution model may lead to unexpected behaviours for the unwary if you have the same notebook open in multiple browser tabs, or if you execute code cells out of cell order. See [](g-notebook_gotchas) for more details.

Follow the guidance on the study planner for a reminder as to which notebooks you should be studying each week.

### Uploading files

To upload a file to the VCE, move to the directory you want to upload the file to, and click on the 'upload' button on the menu in your browser, {numref}`nbclassic_upload`.

```{figure} md_assets/media/nb_classic_upload.png
:name: nbclassic_upload

Uploading files to a classic Jupyter notebook environment

Screenshot of a classic Jupyter notebook homepage, with the "Upload" button indicated towards the top right hand corner of the display.

```

### Downloading files


You can download a single notebook to your computer desktop from either the hosted or the local VCE. To download a notebook your currently have open, use the `File -> Download as -> Notebook` menu option, {numref}`classic_nb_download_nb`. This will download the notebook, including all the outputs.

```{figure} md_assets/media/nbclassic_nb_download.png
:name: classic_nb_download_nb
:alt: 

Classic Jupyter notebook homepage, with download archive button highlighted

Screenshot of a classic notebook , with the 'File menu' open, the "Download as" option selected, and the "Notebook (.ipynb)" submenu option indicated.

```

You can also download multiple notebooks from the hosted VCE, or export notebooks from a container with no shared volume, using the "Download as zip" button on the notebook homepage, {numref}`classc_nb_download_multiple`.

```{figure} md_assets/media/image19.png
:name: classc_nb_download_multiple
:alt: 
:width: 5.772222222222222in
:height: 1.211111111111111in

Classic Jupyter notebook homepage, with download archive button highlighted

Screenshot of the classic notebook home page, with the "Download as zip" button (a down arrow above a horizontal bar) highlighted.

```

## Classic notebook accessibility

The notebooks are rendered within a browser as HTML. Instructional text in notebook Markdown cells are directly readable by screen readers. Code cells are contained within HTML group elements and need to be internally navigated to.

Most of the Jupyter notebook features are keyboard accessible. Several optional extensions provide further support in terms of visual styling and limited audio feedback support.

If you struggle to use the VCE for any reason, including but not limited to incompatibility with any tools you may use to improve software access or usability, please raise an issue in the module forums or contact your tutor.

### Keyboard interface

The Jupyter notebook interface supports a wide range of pre-defined keyboard shortcuts to menu and toolbar options. The shortcuts can be displayed using the Keyboard Shortcuts item from the notebook Help menu or via the Esc-H keyboard shortcut {numref}`nbclassic_shortcuts_dialogue`.

```{figure} md_assets/media/image22.png
:name: nbclassic_shortcuts_dialogue
:width: 5.772553587051618in
:height: 4.863542213473316in

The Jupyter notebook 'Keyboard shortcuts' dialogue box

The Jupyter notebook 'Keyboard shortcuts'
dialogue box

```

You can also add additional shortcuts and/or edit exist shortcuts via the Edit Keyboard Shortcuts menu item as shown in {numref}`classic_nb_shortcueditor`.

```{figure} md_assets/media/image23.png
:name: classic_nb_shortcueditor
:width: 5.7725098425196855in
:height: 4.852255030621173in

The Jupyter notebook dialogue box for editing keyboard shortcuts

The Jupyter notebook dialogue box for editing keyboard shortcuts

```

### Magnification

The apparent size of the notebook contents in general can be zoomed using standard browser magnification tools.

Alternatively, use operating systems tools such as Windows Magnify or the macOS Zoom Window, or other assistive software.

### Accessibility Toolbar

The Jupyter environment includes an experimental accessibility toolbar extension that allows you to control the presentation style of the Jupyter notebook; for example, you can change the font style, size and spacing, the notebook background colour, and so on.

#### Enabling the Accessibility Toolbar

The accessibility toolbar extension is **disabled** in the notebook environment by default. To use the accessibility extension, you need to enable it first. You can do this from the Nbextensions tab on the notebook home page: tick the *Accessibility Toolbar* extension to enable the toolbar ({numref}`nb_extensions_accessibility_toolbar`). When you open a new notebook, the toolbar should be displayed.

```{figure} md_assets/media/image24.png
:name: nb_extensions_accessibility_toolbar
:width: 5.772455161854769in
:height: 3.2653051181102364in

The Jupyter Nbextensions tab showing the Accessibility Toolbar extension

The Jupyter Nbextensions tab showing the Accessibility Toolbar extension

```

Check the accessibility toolbar documentation for more information.

All of the styles are saved into local storage when refreshing the page.
This means that if you use notebooks on different servers with the same browser, the same accessibility settings will be applied to notebooks on all servers within which you have enabled the accessibility extension.

#### Controlling colours and fonts using the Accessibility Toolbar

If you wish to change the font and interface colours used in RoboLab to improve readability, the accessibility toolbar allows you to select the font style, size and colour. You can also modify the line spacing and spacing between individual characters as shown in {numref}`accessibility_toolbar`.

```{figure} md_assets/media/image25.png
:name: accessibility_toolbar
:width: 5.7726673228346455in
:height: 2.802014435695538in

Accessibility toolbar font style options

Font style options offered by the accessibility toolbae

```

The font style applies to *all* text elements within the notebook itself. This includes the contents of Markdown (text) cells, code cells and code cell outputs.

The toolbar can also be used to control the notebook's background colour and the cell background colour.

You can also save a style you have defined from the *Add new style...*
option in the *Predefined styles* menu. Once saved, it will be added to the menu list so you can apply it as required.

### Other assistive software

Please contact your tutor if you discover that the material does not work with a particular screen reader or dictation system that you would typically expect to be able to use.


