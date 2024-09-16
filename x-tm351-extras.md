# Additional Software

The {{MCODE}} ({{PCODE}}) VCE contains several applications and services in addition to the Jupyter environment, in particular:

- *Open Refine*, a graphical application for cleaning and manipulating tabular data sets;
- *PostgreSQL* database management system;
- *MongoDB* database.

## Working with OpenRefine

OpenRefine is a powerful application for cleaning messy data, which we will use later in the module. OpenRefine can be started from the JupyterLab launcher, {numref}`jl_openrefine_launcher`.

```{figure} md_assets/media/jl_openrefine_launcher.png
:name: jl_openrefine_launcher
:width: 5.772370953630796in

OpenRefine Launcher button within JupyterLab

Screenshot of the JupyterLab launcher showing three launch buttons (*Python 3 (ipykernel)*, *nbsearch* and *OpenRefine*). The OpenRefine button, which uses a blue diamond as its logo, is highlighted.

```

OpenRefine provides a browser based user interface that allows you to upload and clean tabular data files.

The OpenRefine application runs in its own browser tab or browser window and should be opened from the JupyterLab *Launcher*.

## Working with PostgreSQL

PostgreSQL is a widely used open source relational database. PostgreSQL is preinstalled in the {{MCODE}} VCE and should run automatically when the VCE is started.

You will access PostgreSQL from Python code running inside Jupyter notebooks.

By default, you should be able to connect to the database inside the VCE using port `5432`.

Connections to the PostgreSQL database can be made using a connection string with the form:

`postgresql://USER:PASSWORD@HOST:PORT/DB`

The following connection string can be used when connecting to the test database:

`PGCONN='postgresql://testuser:testpass@localhost:5432/testdb'`

For specific activities, the connection string will be:

{{postgres_connection}}


In a notebook code cell, you can create a database connection as:

```python
from sqlalchemy import create_engine
DB_CONNECTION = create_engine(PGCONN)
```

If you have enabled `jupysql` IPython magic in a notebook (`%load_ext sql`), you should then be able to register the database connection with the magic via `%sql DB_CONNECTION` and execute SQL code against the database via a `%%sql` block magic code cell.

You can inspect various properties of the database using the `sqlalchemy` inspector. For example, you can view the tables associated with a particular database:

```python
from sqlalchemy import inspect

inspector = inspect(DB_CONNECTION)
inspector.get_table_names()
```

You can manage the PostgreSQL server using the following shell commands from within a terminal running inside the VCE, or prefix the command with a `!` to run it from a Jupyter notebook code cell:

- restart the server: `sudo service postgresql restart`
- start the server: `sudo service postgresql start`
- stop the server: `sudo service postgresql stop`

If you cannot connect to the PostgreSQL database, try restarting using the appropriate command.

If you get an error regarding the permission settings on the PostgreSQL database, try repairing them by running the command:

`sudo PG_VERSION=$PG_VERSION LOCAL_HOME=/home/$USER/${MODULE_CODE}-${MODULE_PRESENTATION} /etc/ou_scripts/repair_pg_migrated_permissions.sh`


If you get other connection error reports, check that the database connection string is correct. Clarify which port PostgreSQL is listening to within the VCE by running the following in a notebook code cell:

`! pg_lsclusters`

*Alternatively, run the `pg_lsclusters` command directly on the command line inside the VCE without the leading `!`.*

The port should by identifiable near the start of the string (e.g. the `main` cluster running on port `5432`). Use the reported port number in your database connection string.

If you still cannot connect to the database, try restarting the VCE. (In a local VCE, restart the container from the Docker Desktop.)

If the PostgreSQL database cannot start, for example, because the configuration file has become corrupted or because of a problem in accessing a data directory copied to a shared drive, reset the database configuration to original settings by running the following command on the command-line:

`sudo /etc/ou_scripts/repair_postgres_db_path.sh`

*Note that this is a destructive act and you will lose any updates you have made to your database.*

### Persisting PostgreSQL databases across OpenComputing Lab sessions and new local VCE sessions

By default, the first time you launch the {{MCODE}} hosted VCE on OpenComputing Lab, or when you mount a directory on to the $HOME directory (also referred to by the alias `~`) inside the local VCE, the PostgreSQL data directory will be copied into a hidden directory in your persistent file area and the database server will be configured to use it.

Specifically, this means that if you update the database, the database contents should be persisted in the hidden `~/.db/postgresql` data directory.

If you do not want to persist any PostgreSQL database changes, you can prevent the database server from using the persistent files and force it to use an ephemeral database data directory which is reset after each hosted session, or whenever a new local VCE container with a shared directory is created. To disable the persistent storage of database files, create in the home directory an empty `.no_local_postgres` file (from a notebook code cell, run `!touch ~/.no_local_postgres`).

To recreate previously modified databases, you will then need to restore the modified database from a backup, or re-run any required data ingestion scripts.

If you do not want *any* databases to use the persisted, mounted data directory, you can alternatively create an empty `.no_local_db_path` file (`! touch ~/.no_local_db_path`).

If you are working with a local VCE, you can persist the database contents *either* using the database data directory mounted into the shared mounted directory, or simply let the database server use a data directory within the container (this will be lost if the container is destroyed, much like a hosted VCE session, but will persist if the container is hibernated or stopped and then restarted). To use an "internal" data directory inside the container, create an empty `.no_local_db_path` or `.no_local_postgres` file at the root of the directory you mount onto `$HOME` inside the container, as in the case of the hosted VCE.

If you are working with the local VCE and do not mount a shared directory onto `$HOME` inside the container, the database will use its default data directory inside the container, which will persist until the container is destroyed.

### Backing up and restoring databases using PostgreSQL

To back up a PostgreSQL database such as a movies database into a folder postgres-backup create a shared `backups` folder, in your {{local_dirname}} shared directory or as {{vce_db_backups}} inside the VCE and run the following commands from a Notebook code cell:

```bash
! mkdir -p ~/backups/postgres-backup/
! pg_dump tm351 > ~/backups/postgres-backup/tm351.sql
```

Note that if the `movies` database does not exist, you will get an error if you try to back it up.

To restore a PostgreSQL database from a previously taken backup, such as a backup of the movies database, run the command (all on a single line):

`! psql tm351    < ~/backups/postgres-backup/tm351.sql`

## Working with MongoDB

MongoDB is a widely used open source "noSQL" document database. MongoDB is preinstalled in the {{MCODE}} VCE and should run automatically when the VCE is started.

You will access MongoDB from Python code running inside Jupyter notebooks.

By default, you should be able to connect to the database inside the VCE using port `27017`.

The following connection string can be used when connecting to the database:

`MONGOCONN='mongodb://localhost:27017'`

You can manage the MongoDB server using the following shell commands from within a terminal running inside the VCE, or prefix the command with a `!` to run it from a Jupyter notebook code cell as shown in the following examples:

- restart the server: `!sudo service mongod restart`
- start the server: `!sudo service mongod start`
- stop the server: `!sudo service mongod stop`

If you cannot connect to the MongoDB database, try restarting using the appropriate command.

If the MongoDB database cannot start, for example, because the configuration file has become corrupted or because of a problem in accessing a data directory copied to a shared drive, reset the database configuration to original settings by running the following command on the command-line:

`sudo /etc/ou_scripts/repair_mongo_db_path.sh`

You might also want to check that you are trying to connect to the correct port. Assuming that the MongoDB server is running using a configuration file in the default location, you can check the configuration file setting to see which port is specified:

`! cat /etc/mongod.conf | grep 'port:'`

You can find the actual location of the configuration file by running the command:

`! ps -xa | grep mongod`

The path to the configuration file is given by the value of the `-f` parameter in the run command. In a notebook code cell, run:

`! /usr/bin/mongod -f /etc/mongod.conf -- run`

If you still cannot connect to the database, try restarting the VCE. (In a local VCE, restart the container from the Docker Desktop.)

### Persisting MongoDB Databases Across OpenComputing Lab Sessions and New Local VCE Sessions

By default, the first time you launch the {{MCODE}} hosted VCE on OpenComputing Lab, or when you mount a directory on to the $HOME directory (also referred to by the alias `~`) inside the local VCE, the MongoDB data directory will be copied into a hidden directory in your persistent file area and the database server will be configured to use it.

Specifically, this means that if you update the database, the database contents should be persisted in the hidden `~/.db/mongo` data directory.

If you do not want to persist any MongoDB database changes, you can prevent the database server from using the persistent files and force it to use an ephemeral database data directory which is reset after each hosted session, or whenever a new local VCE container with a shared directory is created. To disable the persistent storage of database files, create in the home directory an empty `.no_local_mongo` file (in  notebook code cell, run `!touch ~/.no_local_mongo`).

To recreate previously modified databases, you will then need to restore the modified database from a backup, or re-run any required data ingestion scripts.

If you do not want *any* databases to use the persisted, mounted data directory, you can alternatively create an empty `.no_local_db_path` file (`! touch ~/.no_local_db_path`).

If you are working with a local VCE, you can persist the database contents *either* using the database data directory mounted into the shared mounted directory, or simply let the database server use a data directory within the container (this will be lost if the container is destroyed, much like a hosted VCE session, but will persist is the container is hibernated or stopped and then restarted). To use an "internal" data directory inside the container, create an empty `.no_local_mongo` file at the root of the directory you mount onto `$HOME` inside the container, as in the case of the hosted VCE.

If you are working with the local VCE and do not mount a shared directory onto `$HOME` inside the container, the database will use its default data directory inside the container, which will persist until the container is destroyed.

### Backing up and restoring databases using MongoDB

To backup a MongoDB database such as the accidents, create a shared `backups` folder, in your {{local_dirname}} shared directory or as {{vce_db_backups}} inside the VCE, and run the following command (all on a single line) from a Notebook code cell:

```bash
! mkdir -p ~/backups/postgres-backup/
! mongodump --port=27017 --db accidents --out ~/backups/mongo-backup/accidents
```

To restore a MongoDB database from a previously taken backup, such as a backup of the accidents database, run the command (all on a single line):

`mongorestore --port=27017 --drop ~/backups/mongo-backup/accidents`
