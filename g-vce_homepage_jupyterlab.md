# Using the VCE with JupyterLab

When the VCE is fully initialised, you will be presented with the JupyterLab browser based integrated development environment. JupyterLab allows you to manage files, run Jupyter notebooks, and access a terminal from within the same environment window, as depicted in {numref}`jupyterlab_home`.

```{figure} md_assets/media/jupyterlab_ui.png
:name: jupyterlab_home
:width: 5.772370953630796in

The JupyterLab user interface

A screenshot of the JupyterLab interactive development environment (IDE) syle user interface, showing a file browser sidebar, document and application launcher, opened document and terminal editors and a menu toolbar.

```

JupyterLab provides an integrated development environment (IDE) that provides access to a file browser and a range of editors, including a fully featured Jupyter notebook editor.

The JupyterLab environment distributed as part of the VCE includes several pre-installed JupyterLab extensions that enhance the usability of the environment to support your studies (({numref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility` {ref}`g-accessibility_jupyterlab-nbv7.md#jupyter-notebook-accessibility`)).

```{note}
The JupyterLab extensions that have been preinstalled into the {{MCODE}} VCE may differ from extensions used in other module VCEs.

Some modules may distribute a "JupyterLab configuration pack" as a separately installable Python package. Such packages can be used to extend your own JupyterLab environment outside of the VCE in a way that matches the customisation of the environment within the VCE.

For example, the JupyterLab environment in the TM351 VCE is extended using the Python package [`ou-tm351-jl-extensions`](https://pypi.org/project/ou-tm351-jl-extensions/) [[documentation](https://innovationoutside.github.io/ou-tm351-jl-extensions/overview.html)].

```

## Launcher Buttons

Buttons for creating new notebooks and, as well as creating a new terminal, are available from the Launcher.

```{hint}
If you get an error when trying to create a new notebook saying there is  `No root file handle` found, click in the file browser, or click on a directory in the file browser, to set a path, and try again.

If the Launcher button still does not work, right click in the file browser and create a new notebook from the *New Notebook* menu option.
```

Buttons for launching applications used in your module should have been added to the Launcher, {numref}`jl_launcher_buttons`.

```{figure} md_assets/media/jl_launcher_buttons.png
:name: jl_launcher_buttons
:width: 5.772370953630796in

The JupyterLab application and new document launcher. *Options may vary by module.*

Screenshot showing three launcher buttons: Python3 (ipykernel) notebook, nbsearch and OpenRefine.

```
