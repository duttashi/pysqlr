### Postgres SQL

Helpful commands

Launch `psql` and type commands to do the following:

1. Show Databases : `postgres=#\l`
2. Use/Switching Database: This can be done with the `\connect` meta-command or its shortcut `\c`. 
	
	Example: `postgres=#\c dvdrental`
`You are now connected to database "dvdrental" as user "postgres".dvdrental=#`
3. Listing Tables: use `\dt`
	1. Listing table column names and their datatypes: `postgres=# \d+ tablename` Reference: See this [SO post](https://stackoverflow.com/questions/109325/postgresql-describe-table?rq=1)
4. List available schema: `\dn`
5. List available functions: `\df`
6. List available views: `\dv`
7. List users and their roles: `\du`
8. Execute the previous command: `\g`
9. Display command hostory: `\s`
10. Save command history to a file: `\s filename`
11. Execute psql commands from a file: `\i filename`
12. Get help on psql commands: `\?`
13. Turn on query execution time: `\timing`. You use the same command `\timing` to turn it off.
14. Quit psql: `\q`