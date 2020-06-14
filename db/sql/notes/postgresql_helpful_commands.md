### Postgres SQL

Helpful commands

Launch `psql` and type commands to do the following:

1. Show Databases : `postgres=#\l`
2. Use/Switching Database: This can be done with the `\connect` meta-command or its shortcut `\c`. 
	
	Example: `postgres=#\c dvdrental`
`You are now connected to database "dvdrental" as user "postgres".dvdrental=#`
3. Listing Tables: use `\dt`
	1. Listing table column names and their datatypes: `postgres=# \d+ tablename` Reference: See this [SO post](https://stackoverflow.com/questions/109325/postgresql-describe-table?rq=1)