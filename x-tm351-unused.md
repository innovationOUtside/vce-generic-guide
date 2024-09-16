### Postgres

db original location: /var/lib/postgresql/15/main

### Image Editor

The [`jupyterlab-contrib/jlab-image-editor`](https://github.com/jupyterlab-contrib/jlab-image-editor) provides a range of additional image editing tools.

Double clicking an image file in the file listing opens a preview window displaying it containing the image editor controls, {numref}`jl_image_editor`. Simple lines and rectangular shapes can be drawn over the image, and the image can be cropped, rotated etc. Currently, there is no option to add text.

```{figure} md_assets/media/jl_image_editor.png
:name: jl_image_editor
:width: 5.772370953630796in

JupyterLab image editor.

Screenshot showing the JupyterLab UI in which a paintbrush icon in the left hand vertical application toolbar is selected. In the center panel an image editor is displayed, depicting an omage that has been drawn over with a pen stroke. Image efitor menu options can also be seen: crop, rotate, save image as..., filter, flip, draw and clear.,

```

### draw.io Drawing Package

The [`QuantStack//jupyterlab-drawio`](https://github.com/QuantStack/jupyterlab-drawio/) package is an old demonstration that might still be useful. It embeds the [`draw.io`](https://drawio-app.com/) app inside JupyterLab. The application is opened from the Launcher *Diagram* icon, {numref}`jl_diagram_launcher`.

```{figure} md_assets/media/jl_diagram_launcher.png
:name: jl_diagram_launcher
:width: 5.772370953630796in

JupyterLab diagram launcher button.

Screenshot showing the launcher with four buttons displayed in the "Other" launcher section: terminal, diagram (highlighted), text file, markdown file, csv file.

```

Within the editor, you can create your own diagrams using a wide range of diagram primitives, {numref}`jl_drawio_ui`.

```{figure} md_assets/media/jl_drawio.png
:name: jl_drawio_ui
:width: 5.772370953630796in

The draw.io application opened in JupyterLab.

```

Raw (editable) files are saved to the current environment directory as `.dio` files. Unfortunately, there doesn't appear to be a way to export images, so having drawn a diagram, you would have to screenshot it in order to get an image file corresponding to your diagram.

## Jupyter Notebook Templates

Providing notebook templates opens up a range of possibilities for defining reusable "worksheets" for particular sorts of activity.

Templated notebooks might include boilerplate package imports, as well as offering a notebook structure that models a particular sequence of tasks.

Template notebooks can be added to a full server distribution of JupyterLab using the [`jpmorganchase/jupyterlab_templates`](https://github.com/jpmorganchase/jupyterlab_templates) extension.
