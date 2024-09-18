# File Management

If you are working within a hosted VCE, your files will be saved to hosted online storage and will remain accessible for at least the duration and immediate aftermath of the module presentation.

If you are working in a local VCE environment, you can used a shared folder to mount files directly from your desktop/host environment into the VCE and then save any changes back to the desktop environment.

## Uploading and Downloading Files

To upload files or zipped file archives, click the up arrow ("Upload Files") icon in the JupyterLab file browser toolbar; *(in the notebook v7 interface, use the `Upload` button from the notebook UI tool bar)*.

<!-- {% if jl_archive_extension %} -->
To download a compressed file archive of a folder and its contents, in the file browser, right click on the folder and from the pop-up menu select `Download Current Folder as an Archive`.

```{figure} md_assets/media/jl_download_archive.png
:name: jl_download_archive
:width: 4in

Download a folder as a zipped file archive.

Screenshot of context sensitive menu for file directory, with "Download Current Folder as Archive" option selected.

```

This works for local and hosted environments and provides a convenient way to save the contents of a working TMA related directory, for example, for use as a submission to the ETMA system.
<!-- {% endif %} -->

## Zipping and unzipping compressed archive files

A common way of transporting large files or bundles of files, such as collections of Jupyter notebooks, is to compress them into a single compressed archive file, such as a `.zip` file.

To uncompress a zipped file, from the file browser, right click on the zipped file (e.g. `my_archive.zip`) and select `Extract Archive`.

### Working with archive files on the command line (advanced)

Archive files can also be created or opened from the command line. Open a terminal using the JupyterLab *Terminal* Launcher button (or in the notebook UI, via the *New* button on the Jupyter Notebook homepage), and then, in the terminal:

- to unzip a file called `filename.zip`, use the command `unzip filename.zip` and press enter: the file will be unzipped into the current directory. *Depending on the contents of the zip file, the unzipped files may be contained in a newly created directory within the current directory.* Close the terminal. (If the `.zip` file is not in the current directory, use the `cd PATH` command to change directory to the required location before running the `unzip` command, or specify the path to the file (`unzip PATH/TO/filename.zip`).)
- to zip a directory `./my_directory` in the current directory, and all that directory's contents, use the command: `zip -r my_directory_archrchive.zip my_directory/`. 

<!-- {% if use_git or use_local_fs} -->
## Advanced file management
<!-- {% endif %} -->

As well as manually uploading and downloading files, or mounting shared local folders in the local VCE, the following extension(s) are available installed in the {{MCODE}} VCE. Please refere to the official extension documentation or the module forums for further information.

<!-- {% if use_local_fs} -->
### Local file system access

It is possible to open files directly from your personal machine within the Jupyter environment (hosted or local) by mounting files from the desktop file system into the browser.

See {numref}`g-local_fs.md#local-filesystem-access` for more details.

<!-- {% endif %} -->

<!-- {% if use_git} -->
### Synching files to a GitHub repository

You can synchronise files within the VCE to and from a personal GitHub repository. *Note that you should ensure the respository is a __private__ repository so that you do not unwittingly share any of you assessment work in public.*

See {numref}`g-jupyterlab_git.md#using-git-and-github-in-jupyterlab` for more details.
<!-- {% endif %} -->
