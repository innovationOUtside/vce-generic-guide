# Using the classic Jupyter notebook environment

The default home page for the VCE classic Jupyter notebook home page, {numref}`nb_classic_homepage`.

```{figure} md_assets/media/nb_classic_homepage.png
:name: nb_classic_homepage
:alt: A screenshot of a computer Description automatically generated with low confidence
:width: 5.772222222222222in
:height: 1.851388888888889in

Classic Jupyter notebook homepage

A screenshot of the Jupyter notebook home page showing a single directory called "content". A label on the screenshot reads: "Any additional files or directories found in the mounted directory will also be listed".

```

In the local VCE, if the classic Jupyter notebook server application is not available at its default address, there are three possibilities:

1. the application is *not* running

2. the application *is* running, *but* on an incorrectly configured port inside the VCE

3. the application *is* running, and on the correct port, *but* the port or the proxy used to expose it is being blocked in some way.

See [](troubleshooting) for more information.

You will typically access the VCE related activities through the notebook home page. If the VCE has been preloaded with notebook materials, you should see a `content` folder. Click on the 'content' folder. Notebooks will typically be organised by block, unit, study week or topic and may be grouped into corresponding folders.

The listing should also include a notebook called `READ_ME_FIRST.ipynb`.
Click on that notebook to open it. Follow the instructions contained therein to test your VCE installation.

When you open a new Jupyter notebook, it creates a new programming environment kernel (for example, a Python or R code environment). The kernel attached to a notebook executes the code contained within that notebook. Code executed in one notebook is isolated from code executed in every other notebook, unless you have open the same notebook in multiple tabs.

The notebook execution model may lead to unexpected behaviours for the unwary if you have the same notebook open in multiple browser tabs, or if you execute code cells out of cell order. See [](notebook_gotchas) for more details.

Follow the guidance on the study planner for a reminder as to which notebooks you should be studying each week.

## Uploading files

To upload a file to the VCE, move to the directory you want to upload the file to, and click on the 'upload' button on the menu in your browser, {numref}`nbclassic_upload`.

```{figure} md_assets/media/nb_classic_upload.png
:name: nbclassic_upload

Uploading files to a classic Jupyter notebook environment

Screenshot of a classic Jupyter notebook homepage, with the "Upload" button indicated towards the top right hand corner of the display.

```

## Downloading files

See also [](backups.md#backing-up-your-work).
