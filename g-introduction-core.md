# Introduction

In this module, you will use a module specific virtualised computing environment (VCE) for some of the module activities. We offer two ways of accessing the VCE: as an online hosted version using the Open University's Compute Home service (the 'hosted VCE'), and as a locally run environment that you can install on your own computer (a 'local VCE').

The VCE provides a customised computing environment appropriate for your module and an interactive browser based user interface to access the software running inside it. The VCE is implemented using the widely supported Docker container approach.

The hosted VCE is straightforward to use, and is suitable for most students ([](g-compute_home.md#compute-home-online-vce)). If you want to use the VCE when you do not have a connection to the Internet, or if you want to gain experience of installing and running a virtualised computing environment using Docker containers, then you should choose to download and install the local VCE ([](g-local_vce_quickstart.md#local-vce-quick-start)). Further advice on choosing between the two environments is provided in Subsection {numref}`g-introduction-core.md#Choosing-between-the-OU-hosted-and-the-locally-run-VCE`.

Your work in the VCE will be saved within the environment: either in the cloud (by the hosted VCE) or on your local machine (by the local VCE). If you are using the hosted VCE, you should regularly download a copy of your work files, particularly any TMA and EMA related work, to your local machine. For the local VCE, you might also want to back up important files to an alternative location.

## Browser requirements

You will access the software tools provided by the virtual computing environment (either the hosted VCE or the local VCE) via a web browser. For VCEs running Jupyter environments, the notebooks have been tested extensively with the Chrome web browser. Recent versions of the Firefox, Edge and Safari web browsers should also work; Internet Explorer and older, non-Chromium versions of Edge are *not* supported and notebooks may not work correctly if you use them.

*To make it easier to access a locally running VCE, we suggest that you add a browser bookmark for the default web page published by the locally running VCE container. For the remotely hosted VCE, we suggest that you access Compute Home via a bookmark for the module `Resources` page on the VLE.*

## Choosing between the OU hosted and the locally run VCE

For many students, Compute Home provides the most convenient way of accessing the {{MCODE}} VCE. All you need to access the hosted VCE is an internet connection and a computer running a modern web browser. For the duration of the module, all your work will be stored online in a personal file storage area. However, at the end of the module, you will lose access to the hosted VCE. 

If you need to access the VCE in an offline environment, or if you prefer not to use the hosted environment, you can run the VCE locally on your own computer. The local environment also provides a way of using the VCE when the module has finished and the online VCE is no longer available.

The hosted VCE and the local VCE provide the same working environment, so your decision as to which environment to use may depend on convenience as much as anything. Indeed you may want to make use of both environments, accessing each of them at different times or in different circumstances. This is fine. However, when doing so, you will have to manage how you synchronise your files across the two VCEs yourself.

## Backing up your work

It is generally regarded as good practice to make backup copies of any files that you would not like to lose. This applies to the contents of the shared folder that is established when setting up the local VCE, as well as all the folders within the hosted VCE.

In the local VCE, only the files you save inside the VCE directory that the shared folder has been mounted against (recommended as {{vce_homedir}}) will be saved to the shared folder on your desktop. All files inside the VCE will persist inside the container until the container is deleted or destroyed.

Backups are regularly made of your files on the hosted VCE. For the local VCE, files will persist in the directory on your host computer that is mounted into the VCE, even if the VCE container is destroyed.

However, it is still good practice, and beneficial to your own peace of mind if nothing else, particularly when working on TMAs or the EMA, for you to back up or grab an archival copy of your files every so often.

## Updates and upgrades

In putting together the VCE, we have tried to ensure that all the software packages and their interconnections run smoothly. Some of the configuration is software version specific, so you are strongly encouraged not to update or upgrade any of the software packages installed within the environment unless instructed to do so by the module team. Software updates and upgrades occasionally introduce changes that result in undesirable software behaviour, sometimes known as 'breaking changes', that cannot always be predicted in advance.

Information regarding any critical updates or changes recommended by the module team will be distributed via the module forums.

## Handling errors — don't panic

Hopefully, you should not see any error messages when installing or running the software provided by the VCE. On completion of each step everything should be working.

You should try to make sure you have the virtual computing environment up and running as soon as you are advised to access it in the module materials or study calendar. If there are any problems then there should be plenty of time to solve them.

If something doesn't appear to be working, try to read through the error messages and see if you can tell what didn't load properly. Most importantly of all, **don't panic**.

Please remember when raising software issues that posting error logs can really help others to try to solve the problem. Saying 'My software is broken/doesn't work/prints out scary red or purple messages' is not helpful. However, sharing those scary messages probably is. Most importantly of all, **don't be embarrassed** about sharing error messages: they often contain the key to the solution of whatever problem caused them.

If you do encounter a problem, the section [](g-additional-support.md#additional-support) describes a general strategy for working through the problem and how to ask for help. A later section, [](g-troubleshooting.md#troubleshooting), provides more specific guidance for working through particular sorts of issues with the different software applications.

## How the VCE computing guide is structured

This guide includes the following information:

- choosing between the hosted or local VCE (Subsection {numref}`g-introduction-core.md#Choosing-between-the-OU-hosted-and-the-locally-run-VCE`)

- accessing the hosted VCE (Section {numref}`g-compute_home.md#compute-home-online-vce`)

- installing the VCE on your own computer, including testing your installation (Sections {numref}`g-local_vce_quickstart.md#local-vce-quick-start` and {numref}`g-local_vce_detailed.md#local-vce-detailed-guidance`)

- working with the VCE, including uploading and downloading files (Section {numref}`g-vce_homepage_classicnb.md#using-the-vce`)

- accessibility information (Section {numref}`g-accessibility_classicnb.md#classic-notebook-accessibility`)

- information on finding additional support, and guidance on where to look for or ask for help (Section {numref}`g-additional-support,md#additional-support`)

- troubleshooting (Section {numref}`g-troubleshooting.md#troubleshooting`

## Where next?

The next section, Section {numref}`g-compute_home.md#compute-home-online-vce`, {ref}`g-compute_home.md#compute-home-online-vce`, describes how to get started with the hosted VCE. You do not need to read those sections if you only wish to use the local VCE.

There are then two sections — Sections {numref}`g-local_vce_quickstart.md#local-vce-quick-start` ({ref}`g-local_vce_quickstart.md#local-vce-quick-start`) and {numref}`g-local_vce_detailed.md#local-vce-detailed-guidance` ({ref}`g-local_vce_detailed.md#local-vce-detailed-guidance`) — that describe how to install a locally run version of the VCE on your own computer. You do not need to read those sections if you only wish to use the hosted VCE.
