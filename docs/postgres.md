## Postgres 

```
  ###############################################################################
  #--- POSTGRES  postgres psql 5432
  # 
  # If database name has capitalized use "" ie DROP DATABASE "MyData";
  #
  ###############################################################################
  # postgres
  psql> -d <database name>      # connect to a database.
  psql \\d                      # list public schemas
  \\h              Get a help on syntax of SQL commands
  \?              Lists all psql slash commands.
  \set            System variables list.
  \q              Quit psql

  \l              List all databases
  \c dbname       Connect to new database.
  \du             describe users

  \dt             T view list of relations/tables
  \d tablename    Describe the details of given table.
  \df+

  \\e             edit a query then runit

  # USERS
  \du             describe users
  createuser <name>                      creates a user
  CREATE ROLE <name>                     creates a role from psql;
  ALTER ROLE <name> createdb;
  ALTER ROLE <name> createrole;
  ALTER ROLE <name> with password '  ';
  # 
  show data_directory;
  select * from pg_tablespace;

  # create a db owned by 
  CREATE DATABASE <db_name> OWNER <owner> TEMPLATE template0
  DROP DATABASE [if exists] <name>;

  # create index
  # To create a B-tree index on the column title in the table films:
  CREATE UNIQUE INDEX title_idx ON films (title);

```

