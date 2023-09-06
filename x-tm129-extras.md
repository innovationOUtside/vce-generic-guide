# Additional Software for {{MCODE}}

The {{MCODE}} ({{PCODE}}) *Robotics* block VCE provides an environment called RoboLab for programming an on-screen, two dimensional robot simulator from within a Jupyter notebook.

## Working with RoboLab

The RoboLab environment provides:

- a browser based two dimensional graphical robot simulation environment widget that runs inside a classic Jupyter notebook environment;
- several IPython magic commands that allow code entered in the notebook from which the simulator is launched to control the simulator.

```{figure} md_assets/media/tm129_nbev3devsim.png
:name: tm129_nbev3devsim.png
:width: 100%

The RoboLab *nbev3devsim* simulator widget

Screenshot showing the RoboLab *nbev3devsim* simulator widget with three open panels.

The top panel shows a range of buttons that toggle the display of settings and panels (*Simulator*, *Settings*, *Output*, *Noise Controls*, *Instrumentation*, *Sensor Arrays*, *Chart*). All the buttons have a white (empty) background, excpet the *Simulator* button, which has a blue background to show it it selected and the corresponding panel is displayed.

The *Simulator Controls* panel depicts a further range of buttons for controlling the simulator and its display (*World* (selected), *Positioning*, and *Code Display*); a pen up / down slider button and pen colour selection list, with "red" selected; a simulator "Start" / "Stop" slider button, and a *Clear trace* button.

The selected *World* button is responsible for the display of the *Simulator world* panel. This depecits the 2D simulator world. A similated robot is sowho in plan view with two wheels, one on each side, and two sensor "eyes" at the front of the robot, positioned quite close together. The robot is facing to the right. The world background (white) shows three separate vertical stripes, with space between them, coloured red green and blue respectively.

```

A complete set of instructions for working with the simulator are provided in the Jupyter notebooks associated with the Robotics block. The notebooks are pre-installed inside the VCE and should be available when you first access either the hosted or the local VCE.

If you are using the local VCE, and followed the guidance for mounting a shared directory at the default location, the notebooks should be automatically copied over the to the shared folder when the local VCE is first run. Any changes to the notebooks made as you use the VCE will be saved to the shared directory. If the local VCE is shut down, or the local VCE container is deleted, the notebook files will still be available in your shared folder.
