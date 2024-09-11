# Using the terminal command line

If you access the terminal or the command line running inside the VCE container, you can use it to run Linux commands directly (see [](g-troubleshooting.md#accessing-a-terminal-command-line-interface-within-the-VCE) for more information on accessing the terminal).

Many Linux commands will display help information if you run the basic command with the `--help` flag.

The following table provides a quick summary of some of the Linux/Unix commands you might find useful.

| Command | Description |
| -------------------- | ---------------------------------------------------------- |
| `pwd` | Show the path to the current working directory (folder). |
| `cd PATH` | Change directory to the specified path (where `..` signifies 'parent of' and a single `.` represents the current directory). |
| `ls` | List files and folders. |
| `ls /home/ou` | List contents of the specified directory. Inside the VCE, the `/home/ou` path is the recommended default path for the shared folder. |
| `head PATH/FILENAME` | Preview the first 10 lines of the specified file. |
| `tail -n 20 PATH/FILENAME` | Preview the last 20 lines of the specified file. |
| `man COMMAND` | Display manual pages for *command*, e.g. `man pwd`. |
| `wget URL` | Download the file from the specified URL to the current directory. |
| `tar -xvf FILENAME` | Uncompress and unarchive files from a *.tar.gz* or *.tgz* file. |
| `unzip FILENAME.zip` | Unzip a compressed file. Use `-d DIRPATH` to unzip into a specified directory. |
| `zip -r FILENAME.zip DIRECTORY` | Zip a directory as a `.zip` archive file. |