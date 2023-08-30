
### Local Filesystem Access

The [`jupyterlab-contrib/jupyterlab-filesystem-access`](https://github.com/jupyterlab-contrib/jupyterlab-filesystem-access) extension adds local file system access to the JupyterLab environment (currently, Chrome browser only).

This extension allows you to select a directory from your local filesystem (which is to say, the files on your own computer) and access that directory from within Jupyter environment *wherever that environment is actually hosted*, {numref}`jl_local_file_list`

```{figure} md_assets/media/jl_local_file_list.png
:name: jl_local_file_list
:width: 5.772370953630796in

Local file browser.

Screenshot of a sidebar that lists files mounted into the browser from the local file system.

```

```{note}
If you are mounting files from your host computer into a local VCE, you can ignore this extension. Its main benefit is to allow you to view and save files on your local computer when using a remote Juptyer VCE.
```

If you are accessing the computational environment via an OU hosted multi-user JupyterHub server, *your desktop files will be visible and editable within the browser*. When code is executed, it is sent to the OU server, executed there, and the result returned for display in the browser. The results of the computation are rendered in the notebook and those rendered outputs are saved back to the original notebook file on host filesystem.

Read and write permissions over the shared directory on the local filesystem are granted to the domain serving the environment for the duration of a browser session (i.e. as long as at least one tab is open onto the Jupyter server).

This extension works for both the hosted and local container environments, with the following consequences:

- *hosted environment*: students can work on files using the hosted environment that are resident on the student's local machine. This means that students can retain and work from a local copy of their files, rather than files that exist on the server:
  - advantages: for students who always access the remote environment using the same physical, computer, they will work with copies of files that exist on that computer; this means that a student can use a local environment *and* the hosted environment to work on *exactly* the same files.
  - disadvantages: if a student accesses the hosted environment from a different computer, their previously worked on files *will not* be available unless they were manually copied into the persistent file storage provided by the hosted environment.



### Image Editor

The [`jupyterlab-contrib/jlab-image-editor`](https://github.com/jupyterlab-contrib/jlab-image-editor) provides a range of additional image editing tools.

Double clicking an image file in the file listing opens a preview window displaying it containing the image editor controls, {numref}`jl_image_editor`. Simple lines and rectangular shapes can be drawn over the image, and the image can be cropped, rotated etc. Currently, there is no option to add text.

```{figure} md_assets/media/jl_image_editor.png
:name: jl_image_editor
:width: 5.772370953630796in

JupyterLab image editor.

Screenshot showing the JupyterLab UI in which a paintbrush icon in the left hand vertical application toolbar is selected. In the center panel an image editor is displayed, depicting an omage that has been drawn over with a pen stroke. Image efitor menu options can also be seen: crop, rotate, save image as..., filter, flip, draw and clear.,

```


### draw.io Drawing Package

The [`QuantStack//jupyterlab-drawio`](https://github.com/QuantStack/jupyterlab-drawio/) package is an old demonstration that might still be useful. It embeds the [`draw.io`](https://drawio-app.com/) app inside JupyterLab. The application is opened from the Launcher *Diagram* icon, {numref}`jl_diagram_launcher`.

```{figure} md_assets/media/jl_diagram_launcher.png
:name: jl_diagram_launcher
:width: 5.772370953630796in

JupyterLab diagram launcher button.

Screenshot showing the launcher with four buttons displayed in the "Other" launcher section: terminal, diagram (highlighted), text file, markdown file, csv file.

```

Within the editor, you can create your own diagrams using a wide range of diagram primitives, {numref}`jl_drawio_ui`.

```{figure} md_assets/media/jl_drawio.png
:name: jl_drawio_ui
:width: 5.772370953630796in

The draw.io application opened in JupyterLab.

```

Raw (editable) files are saved to the current environment directory as `.dio` files. Unfortunately, there doesn't appear to be a way to export images, so having drawn a diagram, you would have to screenshot it in order to get an image file corresponding to your diagram.


## Jupyter Notebook Templates

Providing notebook templates opens up a range of possibilities for defining reusable "worksheets" for particular sorts of activity.

Templated notebooks might include boilerplate package imports, as well as offering a notebook structure that models a particular sequence of tasks.

Template notebooks can be added to a full server distribution of JupyterLab using the [`jpmorganchase/jupyterlab_templates`](https://github.com/jpmorganchase/jupyterlab_templates) extension.
