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

When you return to the VCE and reopen a notebook, you will find your work saved from your previous sessions, although you may find you that a new kernel session has been started (see [](g-jupyter-notebook-gotchas)).

At the end of each unit or block block, or whenever you have submitted notebook related assessement material, we **strongly** recommend that you download a copy of the completed Jupyter notebooks. On completion of the module, you may lose access to the hosted VCE and your hosted work files. To keep access to any changes you have made to your notebooks, you will need to download copies of them to your own computer.

## Non-appearance of notebooks in the local VCE

In the local VCE, if the classic Jupyter notebook server application is not available at its default address, there are three possibilities:

1. the application is *not* running

2. the application *is* running, *but* on an incorrectly configured port inside the VCE

3. the application *is* running, and on the correct port, *but* the port or the proxy used to expose it is being blocked in some way (for ewxample, by an overly aggressive anti-virus or firewall package).

See [](g-troubleshooting) for more guidance on resolving problems or issues with the VCE.

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

You will typically access the VCE related activities through the notebook home page. Any preloaded materials will be available in the `content` folder. Materials that have been made available by other means, such as via the VLE, will need to be uploaded directly to the VCE, or added via the shared folder when running the local VCE.

 Notebooks will typically be organised by block, unit, study week or topic and may be grouped into corresponding folders.


Click on that notebook to open it. Follow the instructions contained therein to test your VCE installation.

When you open a new Jupyter notebook, it creates a new programming environment kernel (for example, a Python or R code environment). The kernel attached to a notebook executes the code contained within that notebook. Code executed in one notebook is isolated from code executed in every other notebook, unless you have open the same notebook in multiple tabs.

The notebook execution model may lead to unexpected behaviours for the unwary if you have the same notebook open in multiple browser tabs, or if you execute code cells out of cell order. See [](g-jupyter-notebook-gotchas) for more details.

Follow the guidance on the study planner or in your study materials for a reminder as to when it makes sense to study each notebook.

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

## Unzipping compressed archive files

A common way of transporting large files or bundles of files is to compress them into a single compressed archive file, such as a `.zip` file.

To unzip a file called `filename.zip` in the VCE, click on the *New* button from the notebook homepage and select *Terminal* to open a terminal. In the terminal, use the command `unzip filename.zip` and press enter: the file will be unzipped into the current directory. *Depending on the contents of the zip file, the unzipped files may be contained in a newly created directory within the current directory.* Close the terminal.

If the `.zip` file is not in the VCE home directory, use the `cd PATH` command to change directory to the requierd location before running the `unzip` command, or specify the path to the file (`unzip PATH/TO/filename.zip`).
