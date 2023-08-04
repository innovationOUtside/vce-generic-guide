# Backing-up your work

It is generally regarded as good practice to make backup copies of any files that you would not like to lose. This applies to the contents of the shared folder when using the local VCE, as well as the folders within the hosted VCE.

In the local VCE, only the files you save inside the VCE directory that the shared folder has been mounted against (recommended as {{vce_homedir}}) will be saved to the shared folder on your desktop. All files inside the VCE will persist inside the container until the container is deleted or destroyed.

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

Backups are regularly made of your files on the hosted VCE. For the local VCE, files will persist in the directory on your host computer that is mounted into the VCE, even if the VCE container is destroyed.

However, it is still good practice, and beneficial to your own peace of mind if nothing else, particularly when working on TMAs or the EMA, for you to back up or grab an archival copy of your files every so often
