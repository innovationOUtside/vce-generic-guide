# Local VCE quick start

Many Open University modules run over several years. In order to keep the software and applications used in a module VCE current, the a module VCE may be updated for each presentation.

When installing or accessing the VCE, you will need to make use of the **module code** (`{MODULECODE}`, for example, `A123`) and the **module presentation code**. The module presentation code is constructed from the year and month of presentation. For example, the October 2023 presentation has the code `23J`, where `23` represents the year, and `J` the month (the 10th month of the year, mapped to the tenth letter of the alphabet). We use the convention `{YYX}` to denote the upper case module code (for example, `23J`), and `{yyx}` to represent the lower case module code (for example, `23j`).

In many cases, the following quick start instructions should be enough to get you going. Quick start instructions are provided for using the [Docker Desktop graphical user interface](#docker-desktop-quick-start), or, if you prefer, the [command line](#docker-command-line-quick-start).

```{admonition} Creating a shared folder

To share files between your desktop computer and the local VCE, we recommend creating a shared directory in your home directory on your host computer with the name `{modulecode}vce`. See [](local_vce_detailed.md#creating-a-shared-folder).

```

## Docker Desktop quick start

- If you do not already have it installed, download and install Docker Desktop from the [Docker website](https://www.docker.com/products/docker-desktop/)

- From the Docker Desktop search bar, {numref}`dockerhub_image_search`:

  - search for `ou-{modulecode}` or `ousefulcoursecontainer/ou-{modulecode}`; for example, for dummy module `AB1123` search for `ou-ab123` or `ousefulcoursecontainer/ou-ab123`

  - select the image with the tag corresponding to the current presentation code (for example, the October 2023 presentation has presentation code `23j`; February 2024 is `24b`) and pull the selected image

```{figure} md_assets/media/image8.png
:name: dockerhub_image_search
:alt: screenshot of a computer Description automatically generated with medium confidence
:width: 5.772222222222222in
:height: 4.6875in

Docker image search results in Docker Desktop (as of October 2023, tags will be lower case by convention, e.g. `23j`).

Screenshot showing results of searching for an image in Docker Desktop. A selected image is available in several tagged versions. The `23j` version is shown as selected from a drop down list of available tags.

```

- From the Docker Desktop images list, select the appropriate container and create a new container with the following optional settings, {numref}`docker_desktop_new_container_settings`:

  - *container name:* `{modulecode}vce`, for example: `ab123vce`

  - *ports:* use host port `8NNN` against the `:8888/tcp` port, where `NNN` are the three digits of the module code. For example, for `AB123`, use `8123`

  - *volumes:* select a folder you want to share into the container from your host computer; we recommend creating a shared folder called `{MODULECODE}VCE` on your computer (for example, `AB123VCE`) in the folder `C:/Users/your_username/` (Windows) or `/Users/your_username` (Mac/Linux). This folder should be mounted against a path of the form `/home/ou/{MODULECODE}-{YYX}` inside the container, where `{YYX}`is the upper case module presentation code. Note: the path is case sensitive. For the October 2023 presentation, the dummy module path would be:`/home/ou/AB123-23J`

```{figure} md_assets/media/image10.png
:name: docker_desktop_new_container_settings
:width: 5.772222222222222in
:height: 6.627083333333333in

Docker Desktop new container optional settings dialog

Screenshot of the Docker Desktop form for configuring a new container with optional settings. The container name is suggested to be `tm129vce`; the port mapping for `:8888/tcp` is suggested as `8129`; the target for a volume mounted into the container is identified as the uppercase case `/home/ou/TM129-23J` as appropriate for the October 2023 presentation image.

```

- From the running container page, {numref}`docker_desktop_running_container`, click on the link to the mapped port (using the above defaults, this should point to`<http://localhost:8{NNN}>`; for example, `http://localhost:8123` for `AB123`).

  - Use a password / access token of the form `{MODULECODE}-YYX`, (which is to say, incorporating the upper case presentation code). For example, for the October 2023 presentation of `AB123`, use the token `AB123-23J` (all upper case).

```{figure} md_assets/media/image11.png
:name: docker_desktop_running_container
:width: 5.772222222222222in
:height: 1.1041666666666667in

Docker Desktop running container page

Screenshot of the Docker Desktop panel for a running container. The link to a mapped port is highlighted. Clicking the link will open a browser onto the mapped network location.

```

- Test the installation by running through the `READ_ME_FIRST.ipynb` notebook in the VCE `content/` folder.

## Docker command line quick start

- Download and install Docker Desktop from the [Docker website](https://www.docker.com/products/docker-desktop/)

- from a terminal, download the appropriately tagged Docker image using a command of the form:

`docker pull ousefulcoursecontainers/ou-{modulecode}:{yyx}`

For example, for the October 2023 presentation of `AB123`, use `ousefulcoursecontainers/ou-ab123:23j`, replacing `{yyx}` with the lower case tag `23j`; for the February 2024 presentation, use the tag `24b`.

- from a terminal, create a working directory you want to share with container (for example, at `C:/Users/your_username` (Windows) or `/Users/your_username` (Mac/Linux)); change directory (`cd`) into the directory; create and run a container using a command of the following form, replacing `{YYX}` and `{yyx}` with upper and lower case module presentation codes respectively; for example, for the October, 2023 presentation, replace `{YYX}` with `23J` , and `{yyx}` with `23j`:

- Windows:

```{code}
    docker run --name {modulecode}vce -d -p 8{NNN}:8888 -v
    "$pwd:/home/ou/{MODULECODE}-{YYX}"
    ousefulcoursecontainers/ou-{modulecode}:{yyx}
```

- Mac / Linux:

```{code}
docker run --name {modulecode}vce -d -p 8{NNN}:8888 -v
    "$PWD:/home/ou/{MODULECODE}-{YYX}"
    ousefulcoursecontainers/ou-{modulecode}:{yyx}
```

- For example, for `AB123` starting in October 2023, on a Windows
    platform, use the following (all on a single line):

```{code}

    docker run --name ab123vce -d -p 8123:8888 
        -v "$pwd:/home/ou/AB123-23J" 
        ousefulcoursecontainers/ou-ab123:23j
```

- In a browser, navigate to `http://localhost:8{NNN}`, for example:
`http://localhost:8123`

- Use a password / access token of the form `{MODULECODE}-{YYX}` For example, for the October 2023 presentation of `AB123`, use the token `AB123-23J` (all upper case).

- Test the installation by running through the `READ_ME_FIRST.ipynb` notebook in the VCE content/ folder.
