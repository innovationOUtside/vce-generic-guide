# Introduction

In this module, you will use a module specific virtualised computing environment (VCE) for some or all of your practical work. We offer two ways of accessing the VCE: as an online hosted version using the Open University's Compute Home service, and as a locally run environment that you can install on your own computer.

The VCE provides a customised computing environment appropriate for your module and an interactive browser based user interface to access the software running inside it. The VCE is implemented using the widely supported Docker container approach.

The hosted online environment is straightforward to use, and is suitable for most students. If you want to use the VCE when you do not have a connection to the Internet, or if you want to gain experience of installing and running a virtualised computing environment using Docker containers, then you should choose to download and install the local environment.

Your work in the VCE will be saved within the environment: either in the cloud or on your local machine. If you are using the cloud environment, you should regularly download a copy of your work files, particularly any TMA and EMA related work, to your local machine. For the local VCE, you might also want to back up important files to an alternative location.

You should follow the appropriate instructions for the VCE type you require:

- [](compute_home.md#compute-home-online-vce)

- [](local_vce_quickstart.md#local-vce-quick-start)

## Outline structure of this guide

The *VCE Software Guide* contains the following information:

- choosing between the hosted or local VCE

- accessing the hosted VCE

- installing the VCE on your own computer -- including testing your installation

- keeping a backup of your work

- accessibility information

- information on where you can find additional support, and guidance on where to look for or ask for help

- troubleshooting

## Browser requirements

You will access the software tools provided by the virtual computing environment (either the hosted VCE or the locally run VCE) via a web browser. For VCEs running Jupyter notebooks or JupyterLab, the notebooks have been tested extensively with the Chrome web browser. Recent versions of the Firefox, Edge and Safari web browsers should also work; Internet Explorer and older, non-Chromium versions of Edge are *not* supported and notebooks may not work correctly if you use them.

```{admonition} Browser favourites or bookmarks

To make it easier to access a locally running VCE, we suggest that you add a browser bookmark for the default web page published by the locally running VCE container. For the remotely hosted VCE, we suggest that you access Compute Home via a bookmark for the module *Resources* page on the VLE.

```

## Choosing between the OU hosted and the locally run VCE

The online hosted Compute Home service provides the simplest and easiest way of accessing a module's VCE. All you need to access hosted service is an internet connection and a computer running a modern web browser. For the duration of the module, all your work will be stored online in a personal file storage area. However, at the end of the module, you will lose access to the hosted VCE. For many students, Compute Home provides the most convenient way of accessing a module VCE.

If you need to access the VCE in an offline environment, or if you prefer not to use the hosted environment, you can run the VCE locally on your own computer. The local environment also provides a way of using the VCE when the module has finished and the online VCE is no longer available.

The online hosted VCE and the locally run VCE provide the same working environment, so your decision as to which environment to use may depend on convenience as much as anything. You may want to make use of both environments, accessing each of them at different times or in different circumstances. Howeever, when doing so, you will have to manage how you synchronise your files across the environments yourself.

## Updates and upgrades

In putting together the VCE, we have tried to ensure that all the software packages and their interconnections run smoothly. Some of the configuration is software version specific, so you are strongly encouraged not to update or upgrade any of the software packages installed within the environment unless instructed to do so by the module team. Software updates and upgrades occasionally introduce changes that result in undesirable software behaviour, sometimes known as 'breaking changes', that cannot always be predicted in advance.

Information regarding any critical updates or changes recommended by the module team will be distributed via the module forums.

## Handling errors — don't panic

Hopefully, you should not see any error messages when installing or running the software provided by the VCE. On completion of each step everything should be working.

You should try to make sure you have the virtual computing environment up and running as soon as you are advised to access it in the module materials or study calendar. If there are any problems then there should be plenty of time to solve them.

If something doesn't appear to be working, try to read through the error messages and see if you can tell what didn't load properly. Most importantly of all, **don't panic**.

Please remember when raising software issues that posting error logs can really help others to try to solve the problem. Saying 'My software is broken/doesn't work/prints out scary red or purple messages' is not helpful. However, sharing those scary messages probably is. Most importantly of all, **don't be embarrassed** about sharing error messages: they often contain the key to the solution of whatever problem caused them.

If you do encounter a problem, the section [](additional_support.md#where-to-go-for-additional-support) describes a general strategy for working through the problem and how to ask for help. A later section, [](troubleshooting.md#troubleshooting), provides more specific guidance for working through particular sorts of issues with the different software applications.

## Where next?

The next section, {numref}`compute_home.md#compute-home-online-vce`, {ref}`compute_home.md#compute-home-online-vce`, describes how to get started with the Open University online hosted VCE. There are then two sections — {numref}`local_vce_quickstart.md#local-vce-quick-start` ({ref}`local_vce_quickstart.md#local-vce-quick-start`) and {numref}`local_vce_detailed.md#local-vce-detailed-guidance` ({ref}`local_vce_detailed.md#local-vce-detailed-guidance`) — that describe how to install a locally run version of the VCE on your own computer. If you want to retain access to the VCE at the end of the module, the local VCE will remain available on your computer until you decide to delete it. You do not need to read those sections if you only wish to use the hosted Compute Home service. {numref}`using_classic_nb.md#using-the-classic-jupyter-notebook-environment` and {numref}`notebook_gotchas.md#jupyter-notebook-gotchas` describe {ref}`using_classic_nb.md#using-the-classic-jupyter-notebook-environment` and {ref}`notebook_gotchas.md#jupyter-notebook-gotchas` respectively. {numref}`backups.md#backing-up-your-work` reviews backup strategies, and {numref}`classic_nb_accessibility.md#classic-notebook-accessibility` considers {ref}`classic_nb_accessibility.md#classic-notebook-accessibility`. {numref}`troubleshooting.md#troubleshooting` provides further information on {ref}`troubleshooting.md#troubleshooting` and may prove helpful if you run into particular issues. The appendix material in {ref}`vce_technical_architecture.md#appendix--vce-technical-architecture` is purely optional reading that provides a brief technical overview of how the VCEs work.
