# Local Filesystem Access

The [`jupyterlab-contrib/jupyterlab-filesystem-access`](https://github.com/jupyterlab-contrib/jupyterlab-filesystem-access) extension adds local file system access to the JupyterLab environment (currently, Chrome browser only).

This extension allows you to select a directory from your local filesystem (which is to say, the files on your own computer) and access that directory from within Jupyter environment *wherever that environment is actually hosted*, {numref}`jl_local_file_list`

From the "Open new folder" button in the *Local File System" tab, open a directory on your desktop. *You may be prompted for permission.* Sharing the folder allows the browser to read and open the contents of the folder on the desktop in the Jupyter environment.

```{figure} md_assets/media/jl_shared_fs.png
:name: jl_shared_fs
:width: 5.772370953630796in

Shared desktop filesystem.

Screenshot showing how to mount a directory from the desktop into the JupyterLab UI.

```

*No files are copied: the browser is just given permission to read to them from that directory.*
 
You can also create files in the Jupyter environment and save them back to the desktop. For example, in the local file system browser, right click and select *New File*. You may be prompted for permission to write to the shared directory (the browser cannot write outside that directory). The file should appear in your desktop folder. If you open and edit the file in the Jupyter environment, then save it, it should be saved to your desktop.
 
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
