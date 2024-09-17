# Using the VCE with JupyterLab Notebook v7

The JupyterLab Notebook environment is a document-centric environment with two main views: a file browser, and a single page notebook editor.

The Jupyter notebook v7 home page, {numref}`nb7_homepage_file_IDE`. provides a file browser view over the directories and files visible to the Jupyter notebook server.

```{figure} md_assets/media/nb7_homepage_file_IDE.png
:name: nb7_homepage_file_IDE
:width: 5.772222222222222in
:height: 1.851388888888889in

Jupyter notebook v7 homepage

A screenshot of the Jupyter notebook home page show a directory file listing and an exploded listing of the files availbale in one particular directory.

```

The exact contents of this page depends on the module. For example, {numref}`nb7_homepage_file_IDE`) shows the initial contents page for the module TM351. Click on a folder to see the file contents within it. Notebooks are typically self-contained and should be worked through in order. You will be directed to appropriate notebooks from the study planner or module materials as you work your way through the module.


## First steps when using the VCE

Many VCEs will include a `READ_ME_FIRST.ipynb` notebook in the `content/` folder that can be used test the VCE installation. You are advised to work through any such notebook.

To leave the OpenComputing Lab hosted VCE, click the *Logout* link towards the top right-hand corner of the page. This will shut down the VCE, saving your work before it does so. You will also be automatically logged out of the hosted VCE after a period of inactivity.

When you return to the VCE and reopen a notebook, you will find your work saved from your previous sessions, although you may find you that a new kernel session has been started (see {numref}`nb:gotchas` {ref}`nb:gotchas`).

At the end of each unit or block, or whenever you have submitted notebook related assessment material, we **strongly** recommend that you download a copy of the completed Jupyter notebooks. On completion of the module, you may lose access to the hosted VCE and your hosted work files. To keep access to any changes you have made to your notebooks, you will need to download copies of them to your own computer.

## Non-appearance of notebooks in the local VCE

In the local VCE, if the Jupyter notebook server application is not available at its default address, there are three possibilities:

1. the application is *not* running

2. the application *is* running, *but* on an incorrectly configured port inside the VCE

3. the application *is* running, and on the correct port, *but* the port or the proxy used to expose it is being blocked in some way (for example, by an overly aggressive anti-virus or firewall package).

See [](g-troubleshooting.md#troubleshooting) for more guidance on resolving problems or issues with the VCE.

## Using the Jupyter notebook v7 environment

When using the Notebook v7 interface, you will typically access the VCE related activities through the notebook home page. Any preloaded materials will be available in the `content` folder. Materials that have been made available by other means, such as via the VLE, will need to be uploaded directly to the VCE, or added via the shared folder when running the local VCE.

Notebooks will typically be organised by block, unit, study week or topic and may be grouped into corresponding folders.

Click on that notebook to open it. Follow the instructions contained therein to test your VCE installation.

When you open a new Jupyter notebook, it creates a new programming environment kernel (for example, a Python or R code environment). The kernel attached to a notebook executes the code contained within that notebook. Code executed in one notebook is isolated from code executed in every other notebook, unless you have open the same notebook in multiple tabs.

The notebook execution model may lead to unexpected behaviours for the unwary if you have the same notebook open in multiple browser tabs, or if you execute code cells out of cell order. See {numref}`nb:gotchas` {ref}`nb:gotchas` for more details.

Follow the guidance on the study planner or in your study materials for a reminder as to when it makes sense to study each notebook.

### Uploading files

To upload a file to the VCE, move to the directory you want to upload the file to, and click on the 'upload' button on the menu in your browser, {numref}`nb7_upload`.

```{figure} md_assets/media/nb_7_upload.png
:name: nb7_upload

Uploading files to a Jupyter notebook v7 environment

Screenshot of a Jupyter v7 notebook homepage, with the "Upload" button indicated towards the top right hand corner of the display.

```

### Downloading files from the Notebook Homepage

You can download a single notebook to your computer desktop from either the hosted or the local VCE. To download a notebook your currently have open,right-click on the notebook file name, and then from the pop-up menu select *Download*, {numref}`nb7_download_nb`. This will download the notebook, with any run output displays.

You can also download a zipped archive of the directory that contains the notebook, as well as the rest of the directory contents, by selecting *Download Current Folder as Archive*.

```{figure} md_assets/media/nb7_download.png
:name: nb7_download_nb

Jupyter notebook v7 homepage, with download archive button highlighted

Screenshot of a classic notebook , with the 'File menu' open, the "Download as" option selected, and the "Notebook (.ipynb)" submenu option indicated.

```

Right-clicking on a directory name will pup-up a similar menu that again provides you with the option to download a zipped archive file for that directory.

## Unzipping compressed archive files from the Notebook homepage

A common way of transporting large files or bundles of files is to compress them into a single compressed archive file, such as a `.zip` file.

From the notebook homepage, right click on a `.zip` file and select `Extract Archive` to unzip the file. The unzipped contents should then appear in the file listing.

You can also unzip a file from the command line. Click on the *New* button from the notebook homepage and select *Terminal* to open a terminal. In the terminal, use the command `unzip filename.zip` and press enter: the file will be unzipped into the current directory. *Depending on the contents of the zip file, the unzipped files may be contained in a newly created directory within the current directory.* Close the terminal.

If the `.zip` file is not in the VCE home directory, use the `cd PATH` command to change directory to the required location before running the `unzip` command, or specify the path to the file (`unzip PATH/TO/filename.zip`).
