# Troubleshooting

While we have tried to ensure that the software installation process and all the software-related activities run smoothly, there is always a chance that you may encounter a problem or issue with the software.

The section [](g-additional-support.md#additional-support) describes a general strategy for working through problems or raising technical issues. This section describes more specific guidance for working through issues with particular software elements.

```{admonition} Optional content
:class: warning

You shouldn't need to work though the following unless there are specific problems that you have encountered when working with the VCE.

```

## Accessing a terminal command-line interface within the VCE

For many modules, you should not need to access the VCE command line.

However, if you find you do want to issue a command-line command or gain access to a command-line interface or terminal within the virtual machine, there are three main ways of doing this from inside the container:

- Within a notebook code cell, in the first line of the cell enter the command:

`%%bash`

Any additional code lines you enter into the cell will be interpreted as shell commands and executed as such when you run the cell.

- Within a notebook code cell, prefix the command-line command you want to run with an exclamation mark (!). For example, to list the contents of the current directory, run the Linux/Unix ls command:

`! ls`

- Use the Jupyter interactive shell. From the notebooks folder home page, create a new terminal by selecting *Terminal* from the *New* drop-down menu on the right-hand side as shown in {numref}`notebook_new_terminal_item`.

```{figure} md_assets/media/image18.png
:name: notebook_new_terminal_item
:width: 4.902777777777778in
:height: 4.680555555555555in

The "New" drop-down menu

A screenshot of part of the notebooks folder home page showing three buttons — 'Download as zip' (indicated as a down arrow above a horizontal bar), 'Upload' and 'New' — and a refresh button. The 'New' button has been pressed, revealing a drop-down menu with various items'. The item 'Terminal' has been highlighted.
```

See the section [](g-using-linux-command-line.md#using-the-terminal-command-line) for more information on commands that you can run from the command line inside the VCE container.

## Problems arising from working with large notebooks

If you have tried to display a large amount of data in a notebook cell then you may find that your browser struggles to display the notebook.

You should first attempt to clear all the output cells using the notebook menu *Cell > All Output > Clear*. If you are entirely unable to run the notebook to access the menu, first try closing any other notebooks you have open then try opening the problem notebook. If that doesn't allow the notebook to open, then using a command-line command you can run the problem notebook through a separate process that will clear all the cell outputs.

Open a terminal in the VCE. Then change directory (`cd`) to the shared folder, and issue the following command (all on one line):

`jupyter nbconvert --to notebook --ClearOutputPreprocessor.enabled=True YOURNOTEBOOK.ipynb`

By default, the clean notebook will be named `YOURNOTEBOOK.nbconvert.ipynb`. To clean the notebook and retain the same filename, add the flag `--inplace` to the command line:

`jupyter nbconvert --inplace --to notebook --ClearOutputPreprocessor.enabled=True YOURNOTEBOOK.ipynb`

The notebook server may also run into memory problems if you have a large number of notebooks open. Try stopping all the notebooks and then restarting the notebook you are currently working on. (You will need to rerun the code cells to restore the state of the variables.)

## Problems associated with running out of memory

If in a long running container, if you close a notebook but do not stop the associated kernel, you may end up with a large number of still running kernels even if you do not have any notebook tabs open in your browser. You can find a list of running notebooks from the *Running*
tab on the notebook homepage.

You can also see an indication of which notebooks still have running kernels associated with them when viewing a file listing on the notebook home page, {numref}`notebook_running_indicator`.

```{figure} md_assets/media/image26.png
:name: notebook_running_indicator
:width: 5.772270341207349in
:height: 3.6662806211723535in

An example of the notebooks folder home page. The actual directory file path and file listing is indicative only.

A screenshot of a web browser showing the 'Files' tab of the Jupyter notebook environment. A number of items are shown pixellated, but the one with a green icon has an arrow pointing to it labelled 'Running notebook'.

```

If you do find you have a lot of running kernels without associated open notebooks, stop them from the *Running* tab.

## Problems running notebook code

If you have problems running code in the module notebooks, or running your own code, read any error messages carefully to see if they point to the cause of the problem. You may also find it useful to check the relevant documentation, or run a web search using key elements of any error messages that occur.

Technical Q&A sites such as [Stack Overflow](http://stackoverflow.com/)
contain answers to a wide variety of '*How do I ...?*' style questions and are often well worth exploring. Results from searches on Stack Overflow can also be limited to relevant questions by adding appropriate programming language tags to your query, such as *python* or *R*.

If you continue to have problems, check the module forums to see if anyone else has encountered — and resolved — the same issue. You may also ask for support in module forums or from your tutor.

The OU Computing Helpdesk will not be able to help with detailed technical queries arising from the module practical activities, so please limit any module-content related enquiries to the module forums or your tutor. The OU Computing Helpdesk can help with more general computing matters, including some support for installation problems that might occur.

## Finding version numbers for software in your VCE

There may be occasions, such as when troubleshooting or debugging problems, when you are asked to confirm which versions of software applications your are running or programming packages you have installed in your VCE. You will be provided with guidance on how to find the required version numbers.

If you are running into repeated problems with an environment inside a local VCE, report the digest number for the image used to generate the container. You can find this by running the command `docker images --digests` from the command line on your computer. Look for the line corresponding to the {{docker_image}} image: the digest is the number starting with the prefix: `sha256:`.
