# Local VCE detailed guidance

This section provides more detailed guidance on installing and troubleshooting the VCE installation.

## Hardware requirements

The virtual computing environment can be installed onto any computer that can run the Docker application, such as a desktop operating system (Microsoft Windows, macOS, Linux) but not tablet computers or most Chromebooks. To run the virtual computing environment, you will need a 64-bit computer processor and at least 4 GB of memory. You will also need at least 20 GB of free disk space to store the virtual computing environment and the data files you will be working with using this VCE.

## Creating your shared folder

The VCE runs as an isolated virtual machine on your computer. You can share files between the VCE and your host operating system by means of a shared folder. For the shared folder, we recommend creating a folder on your computer called {{local_dirname}} in your documents folder. On a Windows computer, this might be called something like {{winpath}} ; on a Mac, {{macpath}} or {{macpath2}}.

## Installing the local VCE

These instructions describe how to:

- download and install the Docker application if it is not already installed and available

- download the module specific container image that contains all the software applications needed for the module

To familiarise yourself with the installation sequence, we recommend that you read through the installation process for your host operating system and the description of testing your installation at least once before carrying out the process on your own computer.

### Microsoft Windows

For Windows 10 or 11 Home or Pro, Enterprise or Education, all at version 21H2 or higher, follow the WSL2 backend instructions on the Docker website for how to [Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/) (you may need to scroll down to find the detailed instructions). This will require you to:

- download the Docker installation package

- double-click the installation package to run it

- follow the Windows Subsystem for Linux (WSL2) instructions to make sure that WSL2 is installed (or has been recently updated) and enabled; *note that this may require restarting your computer for the changes to take effect*;

  - for older Windows systems, you may need to follow [this guidance](https://learn.microsoft.com/en-us/windows/wsl/install-manual) on how to install WSL2

- check your [virtualisation settings](https://docs.docker.com/desktop/troubleshoot/topics/#virtualization):

  - note: the 'Turn Windows features on or off' dialog box can be obtained by doing the following: Click on Start and start typing 'Turn Windows features on or off' into the search bar;

  - ensure the following Windows settings are enabled: *Virtual Machine Platform* and *Windows Subsystem for Linux*

- start the Docker application:

  - search for *Docker*, and select *Docker Desktop* in the search results.

```{admonition} Windows: accessing a terminal command-line interface

To run the `wsl --install` command and Docker commands on the command line, you will need access to PowerShell.

In Windows, click on Start and start typing PowerShell into the search bar. Open the PowerShell application that should be listed as a result.

```

### Apple macOS

Apple Mac users should follow instructions on the Docker website for how to [Get started with Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/) (you may need to scroll down for detailed instructions).

To find out whether your Mac uses an Intel or Apple silicon chip:

- click the Apple menu and select *About this Mac*

  - check the chip type (XXX Intel YYY or Apple M1 (or above))

  - for older Macs, the chip is described in the Overview tab of the
        *About this mac* dialogue

This will require you to:

- download the Docker installation package

- double-click the installation package to run it (we recommend using the default recommended settings)

- start the Docker application.

You should now be able to download the VCE container image from the Docker Hub.

To make it easier to access the Docker Desktop, open the *Applications* folder, find the *Docker* application and drag the application onto the Dock, You should now be able to launch the Docker Desktop application from the Dock.

```{admonition} macOS: accessing a terminal command-line interface

To run Docker commands on the command line, you will need access to a terminal.

Open the *Applications* folder and find the *Utilities* folder inside it.
The *Terminal* application should be in that (*Applications/Utilities*)
folder. Drag the *Terminal* onto the Dock so you can access it more easily in future.

```

### Linux

Linux users may find that Docker is already installed as part of their Linux distribution. If it is not already installed, follow instructions for how to [install Docker Desktop on Linux](https://docs.docker.com/desktop/install/linux-install/)
platforms.

To launch the Docker Desktop application, open your *Applications* menu in Gnome/KDE Desktop and search for Docker Desktop.

```{admonition} Linux: accessing a terminal command-line interface

To run Docker commands on the command line, you will need access to a terminal.

In the *Applications* menu, the *Terminal* can usually be found in the *System* or *Accessories* menu area.

```

## Downloading the VCE Docker image

A Docker image provides a static template for creating an instance of a personal VCE in a running container. The easiest way to download a Docker image is by using the Docker Desktop search toolbar, {numref}`docker_desktop_searchbar`.

```{figure} md_assets/media/image7.png
:name: docker_desktop_searchbar
:width: 5.772222222222222in
:height: 1.1388888888888888in

The Docker Desktop search toolbar

Screenshot of the Docker Desktop search toolbar.

```

Search for an image using the module code, as shown in {numref}`dockerhub_image_search_b`.

```{figure} md_assets/media/image8.png
:name: dockerhub_image_search_b
:alt: screenshot of a computer Description automatically generated with medium confidence
:width: 5.772222222222222in
height: 4.6875in

*Docker image search results in Docker Desktop (as of October 2023, tags will be lower case by convention, e.g. `23j`).*

Screenshot showing results of searching for an image in Docker Desktop. A selected image is available in several tagged versions. The `23j` version is shown as selected from a drop down list of available tags.

```

- search for {{docker_image_name}} and select the {{docker_image_base}} image from the search results; then from the drop down tag list select the tag that matches the presentation code for this presentation of the module: {{pcode_lc}}. Clicking the *Pull* button will then download the image from the Docker Hub repository to your computer. *The Docker image may take some time to download (up to 20 minutes depending on your network connection).* You should only need to download the image once.

You can also download an image from the command line by running the following command from the command line:

{{'`docker pull ousefulcoursecontainers/ou-' + MCODE|lower + '`'}}

Enter the complete command using lower-cased characters.

## Running the container

The VCE is accessed from a running container. A container is a virtual machine instance created from a previously downloaded container image.

One of the simplest way of running and managing containers is to use the Docker Desktop application.

### Creating a new container

From the *Images* view in the Docker Desktop, identify the appropriate image and click the play button, {numref}`docker_desktop_images`.

```{figure} md_assets/media/image9.png
:name: docker_desktop_images
:width: 5.772222222222222in
:height: 1.8916666666666666in

Docker Desktop images page

Screenshot of the Docker Desktop images view. The TM129 image is identified and the associate play button for creating a running container from it is indicated.

```

From the *Run a new container* dialogue, use settings of the following form:

- *container name:* {{container_name}} (all lower case)

- *ports:* a mapping from the port number inside the container (for example, against `:8888/tcp` for a conventional Jupyter server) onto a location you can access in your browser; use host port 0 to randomly allocate a port, or a port number derived from the module code such as {{'`8' + NCODE + '`'}} (`8` followed by the numerical part of the {{MCODE}} module code)).

- *volumes:* using the file dialogue (click on the three dots) select the folder you want to share into the container from your host computer, such as the folder you created in your home computer documents folder previously. This folder can be shared by mounting it against the path {{vce_homedir}} inside the container (use your module code).

Note: the path inside the container is case sensitive. Use upper case for the module directory inside the container. __Click the `+` sign to ensure the path is registered.__

```{figure} md_assets/media/image10.png
:name: docker_desktop_new_container_settings_2
:width: 5.772222222222222in
:height: 6.627083333333333in

Docker Desktop new container optional settings dialog

Screenshot of the Docker Desktop form for configuring a new container with optional settings. The container name is suggested to be `tm129vce`; the port mapping for `:8888/tcp` is suggested as `8129`; the target for a volume mounted into the container is identified as the uppercase case /`home/ou/TM129-23J` as appropriate for the October 2023 presentation image.

```

Note:

- you cannot have two containers with same name. To reuse a container
    name, you must first stop and delete the container with the name you
    want to reuse.

- once a container has been created, you cannot change the port
    mapping, or mount additional volumes into the container.

You can view the user interface published by the running container, click on the forwarded link that appears in the container status area at the top of the container information page, {numref}`docker_desktop_running_container_2`.

```{figure} md_assets/media/image11.png
:name: docker_desktop_running_container_2
:width: 5.772222222222222in
:height: 1.1041666666666667in

Docker Desktop running container page

Screenshot of the Docker Desktop panel for a running container. The link to a mapped port is highlighted. Clicking the link will open a browser onto the mapped network location.

```

The first time you try to access the notebook user interface, you will be presented with a Jupyter server login screen. The password / access token is {{jupyter_token}} (all upper case).

```{figure} md_assets/media/image12.png
:width: 5.772222222222222in
:height: 2.365972222222222in

The Jupyter server password token prompt when the notebook server is first accessed

Screenshot of the Jupyter notebook server password / prompt page when the notebook server is first accessed. No suggested password / prompt is indicated.

```

Note: you can find the password token by running the following command on the command line *inside* the container, {numref}`jupyter_server_token_discovery` (see also [](#opening-a-terminal-inside-a-running-container)):

`jupyter server list`

```{figure} md_assets/media/image13.png
:name: jupyter_server_token_discovery
:width: 5.772222222222222in
:height: 1.7361111111111112in

Finding the token to use with a running Jupyter notebook server

```

As well as using Docker Desktop to create and manage containers, you can also use the command line. See [](g-local_vce_quickstart.md#docker-command-line-quick-start).

*Make sure that you use the correct module code and presentation tag and the correct case when specifying the image from which the container instance is created.*

You should be able to access the VCE user interface in your browser at the URL {{localhost_port}}.

See [](#managing-docker-from-the-terminal-command-line) for more examples of controlling Docker from the command line.

### Starting, stopping and restarting a container

Containers can be managed from the Containers area of the Docker Desktop, {numref}`running_container_page`.

```{figure} md_assets/media/image14.png
:name: running_container_page
:width: 5.64379593175853in
:height: 1.4401454505686788in

Docker Desktop running container page, highlighting the container controls

Screenshot of Docker Desktop running container view. Several control buttons are highlighted: the Stop button, the Start button, the Restart button and the Delete button.

```

Containers may also be stopped, started and deleted from the
*Containers* listing, {numref}`docker_container_listing`.

```{figure} md_assets/media/image15.png
:name: docker_container_listing
:width: 5.772222222222222in
:height: 1.6652777777777779in

Docker Desktop container listing page

Screenshot of the Docker Desktop containers page. All but one container listings are blurred out, leaving the TM129 container as the only readable item. Within this item, a mapped ports link is highlighted that indicates the container port 8888 is mapped to localhost port 8129.

```

### Opening a terminal inside a running container

You can open a terminal inside a running container from a running container tab inside Docker Desktop, {numref}`docker_desktop_terminal`.

```{figure} md_assets/media/image16.png
:name: docker_desktop_terminal
:width: 5.772222222222222in
:height: 2.5083333333333333in

Opening a terminal into a container using Docker Desktop

```

It is also possible to access the command-line *inside* a running container from the command-line on your host computer by running a command of the form.

`docker exec -it container_name /bin/bash`

For example, to connect to a running container with the container name {{container_name}}, use the command:

{{'`docker exec -it ' +  MCODE|lower + 'vce /bin/bash`'}}

By default, you will be logged in to the container as the default container user. You can log in to the container as the root user by using the `-u/--user 0` (user ID `0`) or `-u/--user root` flag:

{{'`docker exec -it --user root ' +  MCODE|lower + 'vce /bin/bash`'}}

### Managing Docker from the terminal command line

As well as managing your Docker images and containers from the Docker Desktop graphical user interface, you can also manage Docker images and containers from the terminal command line interface.

The core commands are as follows, although they may be modified using various flags:
| Action                                | Terminal command                                |
| ------------------------------------- | ----------------------------------------------- |
| Pull container image                  | `docker pull IMAGENAME`                         |
| Create a container from an image  using a specified container name    | `docker run --name CONTAINER_NAME IMAGENAME`    |
| Stop container                        | `docker stop CONTAINER_NAME`                    |
| Start a previously stopped container  | `docker start CONTAINER_NAME`                   |
| Restart a container                   | `docker restart CONTAINER_NAME`                 |
| Delete a container                    | `docker rm CONTAINER_NAME`                      |
| Show running containers               | `docker ps`                                     |
| Show specific running container       | `docker ps --filter "name=CONTAINER_NAME"`       |
| Show ports exposed by a container     | `docker port CONTAINER_NAME`                    |
| Run a command inside a container      | `docker exec -it CONTAINER_NAME COMMAND`        |
| Access the command line inside a container  | `docker exec -it CONTAINER_NAME /bin/bash`   |
| List all containers                   | `docker container --ls --all`                   |

The following flags may also be used with the `docker run` command:

| Action                           | Flags                                                    |
| -------------------------------- | -------------------------------------------------------- |
| Create container name            | `--name CONTAINER_NAME`                                  |
| Specify volume mount points      | `-v/--volume PATH/ON/HOST:/PATH/IN/CONTAINER`            |
| Port mapping                     | `-p/--publish HOSPORT:CONTAINER_PORT`                  |
| Automatically remove container when it exits  | `--rm`                                                   |
| Run container in background      | `-d/--detach`                                            |
| Set environment variable inside  container     | `-e/--env ENV_VARIABLE="ENV VALUE"`                      |
