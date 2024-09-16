# Local VCE quick start

Many Open University modules run over several years. In order to keep the software and applications used in a module VCE current, the module VCE may be updated for each presentation.

When installing or accessing the VCE, you will need to make use of the **module code** ({{module_code}}) and the **module presentation code** ({{presentation_code}}).

To run the VCE locally, you will need to install a container platform such as Docker on your local computer.

In many cases, the following quick start instructions should be enough to get you going. Quick start instructions are provided for using the [Docker Desktop graphical user interface](#docker-desktop-quick-start), or, if you prefer, the [command line](#docker-command-line-quick-start).

If you need more detailed guidance, see [](g-local_vce_detailed.md#local-vce-detailed-guidance)

## Creating a shared folder

To share files between your desktop computer and the local VCE, we recommend creating a shared directory in your home directory on your host computer with the name {{local_dirname}}.

We recommend creating the shared folder in your documents folder. On a Windows computer, this might be called something like {{winpath}} ; on a Mac, {{macpath}} or {{macpath2}}.

## Docker Desktop quick start

- If you do not already have it installed, download and install Docker Desktop from the [Docker website](https://www.docker.com/products/docker-desktop/)

- From the Docker Desktop search bar, {numref}`dockerhub_image_search`:

  - search for {{docker_image_name}} in the {{ou_docker_repo}} repository

  - select the image with the tag corresponding to the current presentation code ({{pcode_lc}}) and pull the selected image

*If the search returns no results, trying updating your copy of Docker Desktop.*

```{figure} md_assets/media/docker_dashboard_image_search.png
:name: dockerhub_image_search
:width: 5.772222222222222in
height: 4.6875in

Docker image search results for an example image in Docker Desktop

Screenshot showing results of searching for an example `ou-tm351` image in Docker Desktop. A selected image on the `ouseful-course-containers repository`is available in several tagged versions. The `24j` version is shown as selected from a drop down list of available tags.
```

- From the Docker Desktop images list, select the appropriate container and create a new container with the following optional settings, {numref}`docker_desktop_new_container_settings`:

  - *container name:* {{container_name}}

  - *ports:* use host port {{port_map}} as the port mapped from the Jupyter notebook port `:8888/tcp` inside the container

  - *volumes:* select a folder you want to share into the container from your host computer; we recommend creating a shared folder called {{local_dirname}} on your computer such as {{winpath}} (Windows) or {{macpath}} (Mac/Linux). This folder should be mounted against the path {{vce_homedir}} inside the container.

```{figure} md_assets/media/docker_container_create.png
:name: docker_desktop_new_container_settings
:width: 5.772222222222222in
:height: 6.627083333333333in

Docker Desktop new container example, optional settings dialog

Screenshot of the Docker Desktop form for configuring a new example container with optional settings. The container name is suggested to be `tm351vce`; the port mapping for `:8888/tcp` is suggested as `8351`; the target for a volume mounted into the container is identified as the uppercase case `/home/ou/TM351-24J` as appropriate for the October 2024 presentation image.

```

- From the running container page, {numref}`docker_desktop_running_container`, click on the link to the mapped port (using the above defaults, this should point to {{localhost_port}}.

  - Use the password / access token {{jupyter_token}} (all upper case) to access the notebooks.

```{figure} md_assets/media/docker_dashboard_running_container.png
:name: docker_desktop_running_container
:width: 5.772222222222222in
:height: 1.1041666666666667in

Docker Desktop running example container page

Screenshot of the Docker Desktop panel for an example TM351 running container. The link to a mapped port is highlighted. Clicking the link will open a browser onto the mapped network location.

```

- Test the installation by running through any `READ_ME_FIRST.ipynb` style notebooks in the VCE `content/` folder.

## Docker command line quick start

1. Download and install Docker Desktop from the [Docker website](https://www.docker.com/products/docker-desktop/)

2. from a terminal, download the appropriately tagged Docker image using the command:

{{'`docker pull ousefulcoursecontainers/ou-' + MCODE|lower + ':' + PCODE|lower +'`'}}

3. from a terminal, create a working directory you want to share with container (for example, at {{winpath}} (Windows) or {{macpath}} (Mac/Linux)); change directory (`cd`) into the directory you want to share, then create and run a container using a command of the form:

`docker run -d --name NAME -p PORTS -v VOLUMES IMAGE`

and substitute in the following values:

- __NAME__: {{container_name}}
- __PORTS__: {{port_map}}
- __VOLUMES__: {{dir_map}} (You must retain the quotation marks if there are any spaces in directory name paths. You can also pass in an explicit path rather than the "present working directory" (`$(pwd)`))
- __IMAGE__: {{docker_image}}

4. In a browser, navigate to {{localhost_port}}

5. Use the password / access token {{jupyter_token}} to enter the notebook server.

6. Test the installation by running through any `READ_ME_FIRST.ipynb` style notebooks in the VCE content/ folder.
