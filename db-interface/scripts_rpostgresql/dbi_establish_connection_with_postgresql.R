
# Objective: Establish connection with PostgreSQL
library(RPostgreSQL)

# establish connection with database
conn <- dbConnect(PostgreSQL(), user="postgres",
                  dbname="dvdrental", password="papa#123",port="5432")

# execute query and save to variable
dTbl = dbGetQuery(conn, "select * from actor")
summary(dTbl)
