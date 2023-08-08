# Troubleshooting

While we have tried to ensure that the software installation process and all the software-related activities run smoothly, there is always a chance that you may encounter a problem or issue with the software.

The section [](g-additional_support.md#additional-support) describes a general strategy for working through problems or raising technical issues. This section describes more specific guidance for working through issues with particular software elements.

```{admonition} Optional content
:class: warning

You shouldn't need to work though the following unless there are specific problems that you have encountered when working with the VCE.

```

## Problems installing and/or running a local VCE

When you first access or install the VCE, we suggest that you run through the `READ_ME_FIRST.ipynb` notebook as soon as you can. If you have problems installing Docker or the Docker container / VCE, please be sure to include details of your operating system when requesting assistance via the module forum.

You can check whether your VCE container with name `CONTAINERNAME` (for examnple, {{container_name}}) is currently running from the list of running containers displayed in the Docker Dashboard, or by entering the command `docker ps`in a terminal / command prompt.

If the container is not shown as running in the Docker dashboard, or you cannot see it reported as *Up* for a certain period of time in the `docker ps` listing, or the services appear not to be running (your browser doesn't connect to the service after you have entered the appropriate web address then *restart* the VCE from the docker dashboard or by issuing the terminal command `docker restart CONTAINERNAME`.

## Issuing Docker commands on the command line

### Microsoft Windows

To change directory to the desired location, open the command prompt and use the `CD` command, followed by the path to the directory (i.e. folder)
you want to move to. To display the name of the current directory, enter `CD` without any parameters. To list the contents of the current directory, use the `DIR` command.

### Mac and Linux

To change directory to the desired location, open a terminal and use the `cd` command, followed by the path to the directory (i.e. folder) you want to move to. To display the name of the current directory, enter `pwd` without any parameters. To list the contents of the current directory, use the `ls` command.

## Error messages

When running the docker run command, if you see the error message:

`docker: Error response from daemon: Conflict. The container nameCONTAINERNAME is already in use by container "...". You have to remove (or rename) that container to be able to reuse that name.`

you have already created a container with that container name. You should be able to restart it using the command `docker restart CONTAINERNAME` or from the Docker Desktop.

If you need to create a new instance of the container, delete the current instance by running the command `docker rm -f CONTAINERNAME` or using the Docker Desktop, and then try running the `docker run` command again.

## Recovering a Docker container after sleep

If your computer goes to sleep, the container will also be hibernated.
When you wake your computer, the container and the services it is running should also wake up, although you may have to restart any Jupyter notebook kernels you left running. In rare cases, you may find that the container has got stuck somehow. In such a case, check whether the VCE container is currently running by entering the command `docker ps` in a terminal / command prompt and looking for the appropriately named container.

If the container is not running (you cannot see it reported as 'Up' for a certain period of time in the `docker ps` listing) or the services appear not to be running (your browser doesn't connect to the service after you have entered the appropriate address, then *reatart* the VCE from the Docker Dashboard containers dispay or by issuing the terminal command `docker restart CONTAINERNAME`.

## Taking drastic action

```{admonition} Take a backup first
:class: danger

You might want to take a backup of the shared folder and any database content (described below) before attempting the following.

```

If for any reason you need to delete a VCE container instance and create a replacement container from the original image, or update the Docker image and create a newly updated container instance, stop and delete the container using the Docker Desktop, or run the following command to stop and delete the container:

`docker rm --force CONTAINERNAME`

You should now create a new container using the Docker Desktop or by executing the original `docker run` command again.

Deleting the container will *not* delete any of the contents of the shared folder.

## Problems accessing the local VCE in your browser

When using the local VCE, if you cannot see the notebooks folder home page in your browser, the first thing to check is that the VCE is running from the Docker Desktop container listing. Alternatively, on the command line, run the command `docker ps --filter "name=CONTAINERNAME"` or the more general `docker ps` to see whether the container is running. If the container is *not* running, then restart it from the Docker Desktop or by issuing the command `docker restart CONTAINERNAME`.

You can then check the services have been started and where the services are running as described below.

## Problems arising from local VCE notebook permissions

If you encounter permissions-based problems when trying to move files into the shared folder or creating files or folders from the notebook server homepage, then check the file permissions. From a notebook code cell, or from a terminal running inside the container, list the directories set in your home directory (`~`), along with their permissions, by running the command:

`ls -l ~`

If you notice that any of the files have the user:group field set to `root` rather than the `ou` user, reset the permissions by running the following command from PowerShell (Windows) or a terminal (Mac/Linux) on your host computer:

`docker container exec -itu 0 CONTAINERNAME chown -R ou:users /home/ou/`

If you still see an error, restart your computer. You will also need to
(re)start the container, either directly from the Docker Desktop, or in PowerShell/your terminal by running the command:

`docker restart CONTAINERNAME`

On Windows, if you create a shared folder then run the docker run command in the same directory, you may see the error message:

`docker: Error response from daemon: mkdir C:\\WINDOWS\\system32\\SHAREDFOLDERNAME: Access is denied.`

If you see this error message, delete the shared folder and execute the docker run command again. This will automatically recreate the folder.

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

- Via a command line / terminal / command prompt on your host computer, change directory to the shared folder and then run:

`docker exec -it CONTAINERNAME /bin/bash`

If you are running the local VCE, you can also launch a terminal that is connected to the container from the Docker Desktop running container page. If you need to enter the container as the root user, you can do so by running the following command on your host computer:

`docker container exec -itu 0 containername /bin/bash`

The Docker container that houses the VCE is running a version of Linux.

The table below provides a quick summary of Linux/Unix commands you might find useful.

| Command | Description |
| -------------------- | ---------------------------------------------------------- |
| `pwd` | Show the path to the current working directory (folder). |
| `cd PATH` | Change directory to the specified path (where `..` signifies 'parent of' and a single `.` represents the current directory). |
| `ls` | List files and folders. |
| `ls /home/ou` | List contents of the specified directory. Inside the VCE, the `/home/ou` path is the recommended default path for the shared folder. |
| `head PATH/FILENAME` | Preview the first 10 lines of the specified file. |
| `tail -n 20 PATH/FILENAME` | Preview the last 20 lines of the specified file. |
| `man COMMAND` | Display manual pages for *command*, e.g. `man pwd`. |
| `wget URL` | Download the file from the specified URL to the current directory. |
| `tar -xvf FILENAME` | Uncompress and unarchive files from a *.tar.gz* or *.tgz* file. |

## Problems arising from working with large notebooks

If you have tried to display a large amount of data in a notebook cell then you may find that your browser struggles to display the notebook.

You should first attempt to clear all the output cells using the notebook menu *Cell > All Output > Clear*. If you are entirely unable to run the notebook to access the menu, first try closing any other notebooks you have open then try opening the problem notebook. If that doesn't allow the notebook to open, then using a command-line command you can run the problem notebook through a separate process that will clear all the cell outputs.

Open a terminal in the VCE. Then change direcory (`cd`) to the shared folder, and issue the following command (all on one line):

`jupyter nbconvert --to notebook --ClearOutputPreprocessor.enabled=True YOURNOTEBOOK.ipynb`

By default, the clean notebook will be named `YOURNOTEBOOK.nbconvert.ipynb`. To clean the notebook and retain the same filename, add the flag `--inplace` to the command line:

`jupyter nbconvert --inplace --to notebook --ClearOutputPreprocessor.enabled=True YOURNOTEBOOK.ipynb`

The notebook server may also run into memory problems if you have a large number of notebooks open. Try stopping all the notebooks and then restarting the notebook you are currently working on. (You will need to rerun the code cells to restore the state of the variables.)

## Problems associated with running out of memory

If in a long running container, if you close a notebook but do not stop the associated kernel, you may end up with a large number of still running kernels even if you do not have any notebook tabs open in your browser. You can find a list of running notebooks from the the *Running*
tab on the notebook homepage.

You can also see an indication of which notebooks still have running kernels associated with them when viewing a file listing on the notebook home page, Figure 19.

```{figure} md_assets/media/image26.png
:width: 5.772270341207349in
:height: 3.6662806211723535in

Figure 20 An example of the notebooks folder home page. The actual directory file path and file listing is indicative only.

DESCRIPTION: A screenshot of a web browser showing the 'Files' tab of the Jupyter notebook environment. A number of items are shown pixellated, but the one with a green icon has an arrow pointing to it labelled 'Running notebook'.

```

If you do find you have a lot of running kernels without associated open notebooks, stop them from the *Running* tab.

## Problems running notebook code

If you have problems running code in the module notebooks, or running your own code, read any error messages carefully to see if they point to the cause of the problem. You may also find it useful to check the relevant documentation, or run a web search using key elements of any error messages that occur.

Technical Q&A sites such as [Stack Overflow](http://stackoverflow.com/)
contain answers to a wide variety of '*How do I ...?*' style questions and are often well worth exploring. Results from searches on Stack Overflow can also be limited to relevant questions by adding appropriate programming language tags to your query, such as *python* or *R*.

If you continue to have problems, check the module forums to see if anyone else has encountered — and resolved — the same issue. You may also ask for support in module forums or from your tutor.

The OU Computing Helpdesk will not be able to help with detailed technical queries arising from the module practical activities, so please limit any module-content related enquiries to the module forums or your tutor. The OU Computing Helpdesk can help with more general computing matters, including some support for installation problems that might occur.

## Finding version numbers for software in your VCE

There may be occasions, such as when troubleshooting or debugging problems, when you are asked to confirm which versions of software and Python packages you have in your VCE. The following notebook commands will show you how to find most of the key versions:

- **VCE version:** run the following in a notebook code cell:

`! cat /etc/ouseful/.container_version`

## Windows performance issues

You may find that performance of your Windows computer degrades when running Docker under WSL2.

This is caused by WSL2 appropriating too much computational resource from your computer. The solution is to create a file called `.wslconfig` in `C:\\Users\your-username\` containing the lines:

```bash
[wsl2]
memory=4GB # Limits VM memory in WSL 2 to 4 GB
processors=2 # Makes the WSL 2 VM use two virtual processors
```

Using an account with admin rights, from a PowerShell command line, restart WSL2 by entering:

`Restart-Service LxssManager`

You should find that setting `memory=2GB` is enough to run the container although you may find things, particularly in the second half of the course, run more smoothly by setting `memory=4GB`.
