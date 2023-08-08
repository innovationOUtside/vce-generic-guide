# Virtual Computing Enviroment Cribsheet ({{module_code}}, {{presentation_code}} Presentation)

## VCE Cribsheet

- Module code: {{module_code}}
- Presentation code: {{presentation_code}}
- Jupyter notebook server password / access token: {{jupyter_token}}
- Home directory path inside VCE container: {{vce_homedir}}

## Local VCE Settings

- Recommended shared directory name on your computer: {{local_dirname}}
- Recommended location of shared directory:
  - (Windows): {{winpath}}
  - (Mac): {{macpath}} or {{macpath2}}
- Browser URL for local VCE (using recommended port):
  - {{localhost_port}} or {{localhost_port2}}

### Docker command line quick start for running local VCE:

Using a terminal, change directory (`cd`) into the directory you want to share, then create and run a container using a command of the form:

`docker run -d --name NAME -p PORTS -v VOLUMES IMAGE`

substituting in the following values:

- __NAME__: {{container_name}}
- __PORTS__: {{port_map}}
- __VOLUMES__: {{dir_map}} (You must retain the quotation marks if there are any spaces in directory name paths. You can also pass in an explicit path rather than the "present working directory" (`$(pwd)`))
- __IMAGE__: {{docker_image}}

Alternatively, use the Docker Desktop to launch a container from the required image using the above settings; select your {{local_dirname}} shared folder to be mounted against the {{vce_homedir}} directory.

