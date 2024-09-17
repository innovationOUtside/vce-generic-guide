# Jupyter Notebook Accessibility

The Jupyter environments, and the Jupyter notebooks contained within them, are rendered within a browser as HTML. Instructional text in notebook Markdown cells should be directly readable by screen readers. Code cells are contained within HTML group elements and may need to be intentionally navigated to.

Most of the Jupyter notebook features are keyboard accessible. Several pre-installed extensions provide further support in terms of visual styling and limited audio feedback support.

If you struggle to use the VCE for any reason, including but not limited to incompatibility with any tools you may use to improve software access or usability, please raise an issue in the module forums or contact your tutor.

## Keyboard shortcuts

The Jupyter notebook interface supports a wide range of pre-defined keyboard shortcuts to menu and toolbar options ([official docs - command list](https://jupyterlab.readthedocs.io/en/stable/user/commands_list.html)). The shortcuts can be displayed using the Keyboard Shortcuts item from the notebook *Help* menu or via the `Ctrl-shift-H` (Windows) / `Shift-command-H` (Mac OSX) keyboard shortcut {numref}`jl_keyboard_shortcuts_dialogue`.

```{figure} md_assets/media/jl_keyboard_shortcuts_dialogue.png
:name: jl_keyboard_shortcuts_dialogue
:width: 5.772553587051618in
:height: 4.863542213473316in

The JupyterLab 'Keyboard shortcuts' dialogue box

The JupyterLab 'Keyboard shortcuts' dialogue box showing some of the available keyboard shortcuts.

```

You can view and edit existing keyboard shortcuts via the *Settings -> Settings Editor -> Keyboard Shortcuts* display.

To change or add a particular keyboard shortcut for a specific command, click the entry in the "Shortcut" column for that command and enter the key-presses that should be used as the keyboard shortcut for it.

```{figure} md_assets/media/jl_keyboard_shortcuts_settings.png
:name: jl_keyboard_shortcuts_settings
:width: 5.772553587051618in
:height: 4.863542213473316in

The JupyterLab *Settings -> Settings Editor -> Keyboard Shortcuts* editor

The JupyterLab *Settings -> Settings Editor -> Keyboard Shortcuts* editor showing some of the available commands. Clicking in the *Shortcut* column for a particular command allows you to edit the current keyboard command, and/or add additional keyboard shortcuts.

```

## Visual Display Settings

A wide range of visual display settings can be set via the *`Settings -> Theme`* menu.

```{figure} md_assets/media/jl_settings_theme_menu.png
:name: jl_settings_theme_menu

The JupyterLab "Settings -> Theme" menu

The JupyterLab "Settings -> Theme" menu, showing a range of availabe settings, including theme selection, code, content and UI text font size display, and language pack.

```

By default, the Jupyter environment is displayed using a simple black on white theme (*JupyterLab Light*). A "dark" theme (*JupyterLab Light*) is also available.

The menu also provides a means of increasing or decreasing the font size for user interface elements, notebook content (markdown cells) and notebook code cells. Changes to the font size are saved in a persistent settings file (`./.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings`).


The *`Settings -> Language`* menu provides access to alternative user interface language packs. By default, language packs for English (default), French and Chinese are preinstalled.

```{hint}
If you would like to request additional language packs to be installed by default into your module VCE, please contact your module team via the module forums.
```

## Audible Alerts

Various tools have been pre-installed into the VCE that can optionally provide audible alerts and spoken feedback associated with code cell execution.

### Cell execution status

The preinstalled [cell execution status extension](https://github.com/innovationOUtside/jupyterlab_cell_status_extension) provides an enhanced visual display of the run state of a code cell:

```{figure} md_assets/media/cell_status_jl.png
:name: jl_cell_status_indicator
:width: 4in

Cell status indications

Screenshot showing code cells with different cell run status indications: green (success), red (failure), light blue (awaiting execution).

```

A cell flash effect can be optionally enabled to highlight when a cell has finished executing.

Audible alerts can also be enabled from the *`Settings -> Settings Editor`* panel that identify when cells have successfully or unsuccessfully completed their execution. Further settings enable spoken outputs for cell execution error messages.


```{figure} md_assets/media/jl_cell_execution_settings.png
:name: jl_cell_execution_settings

The JupyterLab "cell execution statas" extension settings

The JupyterLab "cell execution status" extension settings panel, showing a range of availabe settings, including the ability to enable/disable cell status indication, cell flash on execution, audible cell execution completion status alerts and spoken cell execution error messages.

```

### Audible Logging

One of the simplest ways of debugging code execution in *ad hoc* way is display a log or "print debug" message at certain points in your code.

The preinstalled [`ou-logger-py` Python package](https://github.com/innovationOUtside/ou-logger-py) builds on the Python `logger` package to allow you to display messages at various priority levels, or have those messages spoken aloud using your browser's built in speech synthesis package.

In the first code cell of a notebook, import the logger as `from ou_logger import logger, set_handler`

This  will display an information message:

```text
Logger enabled. Set level as: logger.setLevel(LEVEL), where LEVEL is one of: DEBUG, INFO, WARNING, ERROR (default), CRITICAL.
Set text and/or text-to-speech output: set_handler('text, tts')
Usage: e.g. logger.error('This is an error message')
```

Logged messages can printed, spoken aloud using the browser text-to-speech (TTS) engine, or both.

Enable text and/or TTS output by adding the relevant line under your import statement at the top of the notebook.

```python
set_handler("text") # Just text output
set_handler("text, tts") # Text and speech output
set_handler("tts") # Just speech output
```

Logging messages will be displayed at or above the declared logging level. For example:

- `logger(CRITICAL)` will only display `CRITICAL` messages;
- `logger(WARNING)` will display `WARNING`, `ERROR` and `CRITICAL` messages.

By default, messages will be displayed as text:

```{figure} md_assets/media/ou_logger_text.png
:name: ou_logger_text
:width: 5.772553587051618in

Example ou-logger message.

Example of ou-logger message displayed on a pink background as notebook streamed output

```
