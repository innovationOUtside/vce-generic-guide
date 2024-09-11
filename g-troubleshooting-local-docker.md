# Troubleshooting the Local VCE

The section [](g-additional-support.md#additional-support) describes a general strategy for working through problems or raising technical issues. This section describes more specific guidance for working through issues working with docker and the locally run VCE.

```{admonition} Optional content
:class: warning

You shouldn't need to work though the following unless there are specific problems that you have encountered when working with the local VCE.

```

## Problems installing and/or running a local VCE

When you first access or install the VCE, we suggest that you run through the `READ_ME_FIRST.ipynb` notebook as soon as you can. If you have problems installing Docker or the container / VCE, please be sure to include details of your operating system when requesting assistance via the module forum.

You can check whether your VCE container with name `CONTAINERNAME` (for example, {{container_name}}) is currently running from the list of running containers displayed in the Docker Desktop, or by entering the command `docker ps` in a terminal / command prompt.

```{admonition} Finding the JupyterLab user-interface

In some environments, the VCE landing page may be a Jupyter notebook interface. If the JupyterLab environment is available in that VCE, edit the URL in your web browser to {{localhost_lab}} or {{localhost_lab2}}.
```

If the container is not shown as running in the Docker Desktop, or you cannot see it reported as *Up* for a certain period of time in the `docker ps` listing, or the services appear not to be running (your browser doesn't connect to the service after you have entered the appropriate web address then *restart* the VCE from the Docker Desktop or by issuing the terminal command `docker restart CONTAINERNAME`.

## Issuing Docker commands on the command line

### Docker in Microsoft Windows

To change directory to the desired location, open the command prompt and use the `CD` command, followed by the path to the directory (i.e. folder) you want to move to. To display the name of the current directory, enter `CD` without any parameters. To list the contents of the current directory, use the `DIR` command.

### Docker with Mac and Linux

To change directory to the desired location, open a terminal and use the `cd` command, followed by the path to the directory (i.e. folder) you want to move to. To display the name of the current directory, enter `pwd` without any parameters. To list the contents of the current directory, use the `ls` command.

## Docker Error messages

When running the `docker run` command, if you see the error message:

`docker: Error response from daemon: Conflict. The container name CONTAINERNAME is already in use by container "...". You have to remove (or rename) that container to be able to reuse that name.`

you have already created a container with that container name. You should be able to restart it using the command `docker restart CONTAINERNAME` or from the Docker Desktop.

If you need to create a new instance of the container, delete the current instance by running the command `docker rm -f CONTAINERNAME` or using the Docker Desktop, and then try running the `docker run` command again.

## Docker container hangs on startup or raises "out of space" error

If the Docker container hangs on startup, or raises an "out of space" error, on the command line run the command: `docker system prune`. When prompted, accepting the request to continue will delete any stopped containers and cached Docker files. Restart the container.

## Recovering a Docker container after sleep

If your computer goes to sleep, the container will also be hibernated.
When you wake your computer, the container and the services it is running should also wake up, although you may have to restart any Jupyter notebook kernels you left running. In rare cases, you may find that the container has got stuck somehow. In such a case, check whether the VCE container is currently running by entering the command `docker ps` in a terminal / command prompt and looking for the appropriately named container.

If the container is not running (you cannot see it reported as 'Up' for a certain period of time in the `docker ps` listing) or the services appear not to be running (your browser doesn't connect to the service after you have entered the appropriate address, then *restart* the VCE from the Docker Desktop containers display or by issuing the terminal command `docker restart CONTAINERNAME`.

## Taking drastic action

```{admonition} Take a backup first
:class: danger

You might want to download your files or make a backup of the shared folder before attempting the following. Any files in the container that are *not* reached via the shared files path will be destroyed when the container is detroyed.

*Any files you wish to save muse be saved into the shared folder path or downloaded to your desktop by some other means.*

```

If for any reason you need to delete a VCE container instance and create a replacement container from the original image, or update the Docker image and create a newly updated container instance, stop and delete the container using the Docker Desktop, or run the following command to stop and delete the container:

`docker rm --force CONTAINERNAME`

You should now create a new container using Docker Desktop or by executing the original `docker run` command again.

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

## Accessing a terminal in the local VCE as `root`

Via a command line / terminal / command prompt on your host computer, change directory to the shared folder and then run:

`docker exec -it CONTAINERNAME /bin/bash`

If you are running the local VCE, you can also launch a terminal that is connected to the container from the Docker Desktop running container page. If you need to enter the container as the root user, you can do so by running the following command on your host computer:

`docker container exec -itu 0 containername /bin/bash`

The container that houses the VCE is running a version of Linux.

See the section [](g-using-linux-command-line.md#using-the-terminal-command-line) for more information on commands that you can run from the command line inside the VCE container.

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

You should find that setting `memory=2GB` is enough to run the container although you may find things run more smoothly by setting `memory=4GB`.
