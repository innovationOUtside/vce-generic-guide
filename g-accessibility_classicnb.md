# Classic notebook accessibility

The notebooks are rendered within a browser as HTML. Instructional text in notebook Markdown cells are directly readable by screen readers. Code cells are contained within HTML group elements and need to be intentionally navigated to.

Most of the Jupyter notebook features are keyboard accessible. Several pre-installed extensions provide further support in terms of visual styling and limited audio feedback support.

If you struggle to use the VCE for any reason, including but not limited to incompatibility with any tools you may use to improve software access or usability, please raise an issue in the module forums or contact your tutor.

## Keyboard interface

The Jupyter notebook interface supports a wide range of pre-defined keyboard shortcuts to menu and toolbar options. The shortcuts can be displayed using the Keyboard Shortcuts item from the notebook Help menu or via the Esc-H keyboard shortcut {numref}`nbclassic_shortcuts_dialogue`.

```{figure} md_assets/media/image22.png
:name: nbclassic_shortcuts_dialogue
:width: 5.772553587051618in
:height: 4.863542213473316in

The Jupyter notebook 'Keyboard shortcuts' dialogue box

The Jupyter notebook 'Keyboard shortcuts'
dialogue box

```

You can also add additional shortcuts and/or edit exist shortcuts via the Edit Keyboard Shortcuts menu item as shown in {numref}`classic_nb_shortcueditor`.

```{figure} md_assets/media/image23.png
:name: classic_nb_shortcueditor
:width: 5.7725098425196855in
:height: 4.852255030621173in

The Jupyter notebook dialogue box for editing keyboard shortcuts

Screenshot of the Jupyter notebook settings dialog for editing keyboard shortcuts. Examples of several commands for which shortcuts are available are listed, along with the associated keyboard shortcut, if defined.

Example commands listed include: "shutdown kernel", "confirm shutdown kernel", "restart kernel", "restart kernel and ruin all cells", "reastart kernel and clear output", "interrupt kernel" and "run cell".
```

## Magnification

The apparent size of the notebook contents in general can be zoomed using standard browser magnification tools.

Alternatively, use operating systems tools such as Windows Magnify or the macOS Zoom Window, or other assistive software.

## Accessibility Toolbar

The Jupyter environment includes an experimental accessibility toolbar extension that allows you to control the presentation style of the Jupyter notebook; for example, you can change the font style, size and spacing, the notebook background colour, and so on.

### Enabling the Accessibility Toolbar

If the accessibility toolbar extension is not displayed, you will need to enable it. You can do this from the `Nbextensions` tab on the notebook home page (you may need to toggle the extension configurator *disable configuration* option first): tick the *Accessibility Toolbar* extension to enable the toolbar ({numref}`nb_extensions_accessibility_toolbar`). When you open a new notebook, the toolbar should be displayed.

```{figure} md_assets/media/image24.png
:name: nb_extensions_accessibility_toolbar
:width: 5.772455161854769in
:height: 3.2653051181102364in

The Jupyter Nbextensions tab showing the Accessibility Toolbar extension

Screenshot of the Jupyter Nbextensions tab listing all the installed ecxtensions and highlighting the option for enabling the Accessibility Toolbar extension.

```

Check the accessibility toolbar documentation for more information.

All of the styles are saved into local storage when refreshing the page.
This means that if you use notebooks on different servers with the same browser, the same accessibility settings will be applied to notebooks on all servers within which you have enabled the accessibility extension.

### Controlling colours and fonts using the Accessibility Toolbar

If you wish to change the way in which text is displayed in order to improve readability, the accessibility toolbar allows you to select the font style, size and colour. You can also modify the line spacing and spacing between individual characters as shown in {numref}`accessibility_toolbar`.

```{figure} md_assets/media/image25.png
:name: accessibility_toolbar
:width: 5.7726673228346455in
:height: 2.802014435695538in

Accessibility toolbar font style options

Font style options offered by the accessibility toolbar.

```

The font style applies to *all* text elements within the notebook itself. This includes the contents of Markdown (text) cells, code cells and code cell outputs.

The toolbar can also be used to control the notebook's background colour and the cell background colour.

You can also save a style you have defined from the *Add new style...*
option in the *Predefined styles* menu. Once saved, it will be added to the menu list so you can apply it as required.

## Other assistive software

Please contact your tutor if you discover that the material does not work with a particular screen reader or dictation system that you would typically expect to be able to use.
