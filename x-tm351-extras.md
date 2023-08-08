# Additional Software for {{MCODE}}

The {{MCODE}} ({{PCODE}}) VCE contains several applications and services in addition to the Jupyter environment, in particular:

- *Open Refine*, a graphical application for cleaning and manipulating tabular data sets;
- *PostgreSQL* database management system;
- *MongoDB* database.

## Working with OpenRefine

OpenRefine is a powerful application for cleaning messy data, which we will use later in the module. OpenRefine can be started from the JupyterLab launcher, {numref}`jl_openrefine_launcher`.


```{figure} md_assets/media/jl_openrefine_launcher.png
:name: jl_openrefine_launcher
:width: 5.772370953630796in
:height: 1.879740813648294in

OpenRefine Launcher button within JupyterLab.

```

OpenRefine provides a browser based user interface that allows you to upload and clean tabular data files.

## Working with PostgreSQL

PostgreSQL is a widely used open source relational database. PostgreSQL is preinstalled in the {{MCODE}} VCE and should run automatically when the VCE is started.

You will access PostgreSQL from Python code running inside Jupyter notebooks.

By default, you should be able to connect to the database inside the VCE using port `5432`.

The following connection string can be used when connecting to the database:

`PGCONN='postgresql://testuser:testpass@localhost:5432/testdb'`

You can manage the PostgreSQL server using the following shell commands fron within a terminal running inside the VCE, or prefix the command with a `!` to run it from a Jupyter notebook code cell:

- restart the server: `sudo service postgresql restart`
- start the server: `sudo service postgresql start`
- stop the server: `sudo service postgresql stop`

If you cannot connect to the PostgreSQL database, try restarting using the appropriate command.

You might also want to check that you are trying to connect to the correct port. To check what port PosgreSQL is listening to within the VCE, in a code cell, run:

`! lsof -P -iTCP -sTCP:LISTEN | grep postgres`

The port should by identifiable at the end of the string (e.g. TCP `:5432 (LISTEN)` shows that PostgreSQL is listening to port `5432`).

If you still cannot connect to the database, try restarting the VCE. (In a local VCE, restart the container from the Docker Dashboard.)

### Backing up and restoring databases using PostgreSQL

To back up a PostgreSQL database such as a movies database into a folder postgres-backup create a shared `backups` folder, in your {{local_dirname}} shared directory or as {{vce_db_backups}} inside the VCE and run the following command from a Notebook code cell (all on a single line): 

```bash
! mkdir -p ~/backups//postgres-backup/
! pg_dump tm351 > ~/backups/postgres-backup/tm351.sql`
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

You can manage the MongoDB server using the following shell commands fron within a terminal running inside the VCE, or prefix the command with a `!` to run it from a Jupyter notebook code cell:

- restart the server: `sudo service mongod restart`
- start the server: `sudo service mongod start`
- stop the server: `sudo service mongod stop`

If you cannot connect to the MongoDB database, try restarting using the appropriate command.

You might also want to check that you are trying to connect to the correct port. To check what port PosgreSQL is listening to within the VCE, in a code cell, run:

`! lsof -P -iTCP -sTCP:LISTEN | grep mongo`

The port should by identifiable at the end of the string (e.g. TCP `:27017 (LISTEN)` shows that PostgreSQL is listening to port `27017`).

If you still cannot connect to the database, try restarting the VCE. (In a local VCE, restart the container from the Docker Dashboard.)

If you still cannot connect to the database, try restarting the VCE. (In a local VCE, restart the container from the Docker Dashboard.)

### Backing up and restoring databases using MongoDB

To backup a MongoDB database such as the accidents, create a shared `backups` folder, in your {{local_dirname}} shared directory or as {{vce_db_backups}} inside inside the VCE, and run the following command (all on a single line) from a Notebook code cell:

```bash
! mkdir -p ~/backups//postgres-backup/
! mongodump --port=27017 --db accidents --out ~/backups/mongo-backup/accidents
```

To restore a MongoDB database from a previously taken backup, such as a backup of the accidents database, run the command (all on a single line): 

`mongorestore --port=27017 --drop ~/backups/mongo-backup/accidents`
