# Appendix VCE technical architecture

Many Open University modules require the use of third-party software tools, applications and programming environments. Through the use of virtual computing environments (VCEs), we are able to provide identical environments to students using remotely accessed VCEs hosted on the Open University's OpenComputing Lab servers or running locally on your own computer.

```{admonition} Optional content
:class: warning

You shouldn't need to work though the following unless there are specific problems that you have encountered when working with the VCE.

```

## Containers and the VCE

The VCE runs in a virtualised container as a *guest* Linux (Ubuntu) operating system on a host computer such as OpenComputing Lab or your own computer. The containers typically operate in a 'headless' mode (that is, without a graphical desktop interface) and run a variety of application services. The applications are exposed as interactive, graphical web applications via an HTTP interface that you can access through a web browser.

The local and hosted VCEs both runs as a single user environment. The hosted VCE launches a separate containerised environment for each student using a JupyterHub multi-user server.

Persistent file storage is available on both the hosted and local VCE.

In the hosted VCE, files are saved to a persistent personal file storage area that is accessible through the hosted VCE. Experimental extensions are available for some Jupyter environments and in some browsers that can map a selected folder on a user's own computer into the browser and execute notebooks in that folder using the remote VCE.

If a local VCE is created, it can be configured to share a folder with the host computer. The contents of this folder are visible to both the host computer and the local VCE (that is, the guest machine); they also remain visible on the host even if the guest machine is not running. The shared folder thus provides a way of passing files from your host machine into the local VCE, as well as getting files (such as backup files) out of the local VCE and onto your host computer. {numref}`vce_arch_overview` broadly describes the architecture of a local VCE and its relationship with your host operating system.

```{figure} md_assets/media/image20.png
:name: vce_arch_overview
:width: 3.4895833333333335in
:height: 2.28125in

Overview of the architecture of a virtual computing environment

The architecture of a VCE is shown as a block diagram -- showing the embedding and linking between components. The architecture shows that your computer, for example a Windows PC, directly runs a container platform, such as the Docker application, the shared folder and your browser. The container platform application creates a container that contains a guest Linux operating system that runs various pieces of module software. You can use your browser to access web applications and download files from the web, but in addition it can also access the module software on the guest operating system.

The shared folder is shown as being accessed from the containerised virtual computing environment software and from the browser on the host.
The shared folder is accessible from your browser (so you can upload files from the web and place them in the shared folder) and from the guest operating system (so the module software can read and write files in the shared folder).

```

Many VCEs provide access to the Jupyter classic notebook or Jupyter Lab interactive environment via a web browser. The Jupyter notebook user interfaces provides an interactive notebook style environment for writing, executing and capturing the output of executable program code using a wide variety of programming languages, such as Python or R.

Within the VCE, applications publish services on port numbers associated with the 'localhost' network *inside* the virtual environment. Docker then *forwards* the traffic on published ports to another set of port numbers that are visible on the localhost network relative to the host.
The localhost network within the VCE is *not* the same network as the localhost network on the host. This is shown in {numref}`port_mapping`.

```{figure} md_assets/media/image21.png
:name: port_mapping
:width: 5.772279090113736in
:height: 3.119663167104112in

Port mapping from the container to the host network

A block diagram showing the relationship between software and the network ports used in the virtual computing environment (VCE), and the ports accessible on the host machine through your browser. The virtual computing environment and the host machine are connected by port-mapping software that translates between port addresses in each machine. The virtual computing environment is shown on the left-hand side with an internal network, with the address 127.0.0.1, to which various software processes are connected through specific local port numbers -- these are the guest ports of interest on TM129. The notebook server is on port 127.0.0.1:8888. Each port connects to the VCE internal network and through that to the port-mapping software, which in turn connects to the host internal network, shown on the right-hand side. On the host computer, the host internal network is shown as connecting to software processes in the browser through the ports; the software shown here is the notebooks on 127.0.0.1:8129.

```

VCE applications are typically accessed from a web browser. When using the remote VCE, you will be automatically forwarded to the correct URL from OpenComputing Lab. In the local VCE, using the suggested default settings, the notebooks can be accessed via a URL that addresses a particular port on the computer's own localhost internal network with numerical address 127.0.0.1.

## Creating your own version of a module VCE

Many Open University VCEs incorporate several inter-dependent software packages and applications. These self-contained virtual computing environments have been developed to provide a 'ready-to-use' environment that contain all the software you need to complete your studies within a particular module and can typically be run via the hosted OpenComputing Lab service, or on your own computer using a container launched from a prebuilt image.

If you want to build your own version of the environment — **which is *not* required for the module, and is *not* recommended in most cases** — please contact the module team via the module forums. Note that the module team are unlikely to be able to support students creating their own environments although they may be able to indicate what the installation requirements are.
