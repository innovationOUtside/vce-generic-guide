# File Management

If you are working in a local VCE environment, you can used a shared folder to mount files directly from your desktop/host environment into the VCE and then save any changes back to the desktop environment.

However, accessing materials that would you like to save on your personal machine from a hosted environment, or accessing materials from one or more devices, presents a significant challenge if we are to prevent inconsistencies arising in the files that are being worked on.

## Uploading and Downloading Files

To upload files or zipped file archives:

- in JupyterLab, in the file browser, click the up arrow ("Upload Files") icon in the file browser toolbar

- in Jupyter Notebook, from the notebook file browser home page, click on the `Upload` button at the right hand side of the home page window.

The [`jupyterlab-contrib/jupyter-archive`](https://github.com/jupyterlab-contrib/jupyter-archive) extension provides a convenient way of downloading and zipping files from a selected directory, {numref}`jl_download_archive`.

```{figure} md_assets/media/jl_download_archive.png
:name: jl_download_archive
:width: 4in

Download a folder as a zipped file archive.

Screenshot of context sensitive menu for file directory, with "Download Current Folder as Archive" option selected.

```

In the Jupyter Notebook environment, on the notebook homepage, to download a compressed file archive of a folder and its contents, right click on the folder and from the pop-up menu select `Download Current Folder as an Archive`.

This works for local and hosted environments and provides a convenient way to save the contents of a working TMA related directory, for example, for use as a submission to the ETMA system.

## Zipping and unzipping compressed archive files

A common way of transporting large files or bundles of files, such as collections of Jupyter notebooks, is to compress them into a single compressed archive file, such as a `.zip` file.

To uncompress a zipped file in JupyterLab and Jupyter Notebook, from the file browser, right click on the zipped file (e.g. `my_archive.zip`) and select `Extract Archive`.

Archive files can also be created or opened from the command line. Open a terminal by clicking on the *Terminal* Launcher button (JupyterLab) or via the *New* button (Jupyter Notebook homepage), and then, in the terminal:

- to unzip a file called `filename.zip`, use the command `unzip filename.zip` and press enter: the file will be unzipped into the current directory. *Depending on the contents of the zip file, the unzipped files may be contained in a newly created directory within the current directory.* Close the terminal. (If the `.zip` file is not in the current directory, use the `cd PATH` command to change directory to the required location before running the `unzip` command, or specify the path to the file (`unzip PATH/TO/filename.zip`).)
- to zip a directory `./my_directory` in the current directory, and all that directory's contents, use the command: `zip -r my_directory_archrchive.zip my_directory/`. 