# Virtual Computing Enviroment Cribsheet ({{module_code}}, {{presentation_code}} Presentation)

A quick reminder guide to names and codes used in association with the VCE for this module presentation:

- Module code: {{module_code}}
- Presentation code: {{presentation_code}}
- Jupyter notebook server password / access token: {{jupyter_token}}

Useful names and locations when using the local VCE:

- Recommended shared directory name on your computer: {{local_dirname}}
- Recommended location of shared directory:
  - (Windows): {{winpath}}
  - (Mac): {{macpath}} or {{macpath2}}
- Docker image name (for pulling from Docker Hub): {{docker_image}}
- Recommended Docker container name (local running): {{container_name}}
- Home directory path inside container: {{vce_homedir}}
- Docker directory mapping (when running container from inside shared directory): {{dir_map}}
- Recommended port number on host: {{host_port}}
- Docker port mapping (recommended port): {{port_map}}
- Browser URL for local VCE (recommended port): {{localhost_port}} or {{localhost_port2}}

Docker command line quick start for running local VCE:

`docker run -d --name NAME -p PORTS -v VOLUMES IMAGE`

and substitute in the following values:

- __NAME__: {{container_name}}
- __PORTS__: {{port_map}}
- __VOLUMES__: {{dir_map}} (You must retain the quaotation marks if there are any spaces in directory name paths. You can also pass in an explicit path rather than the "present working directory" (`$(pwd)`))
- __IMAGE__: {{docker_image}}

