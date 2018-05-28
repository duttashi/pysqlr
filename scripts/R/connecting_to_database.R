#library(odbc)
#con <- dbConnect(odbc(), Driver = "SQL Server", Server = "ASHOO-PC\\SQLEXPRESS", Database = "DB2018")


# Script Objective: To learn how to connect R to SQL and perform data manipulation.
# Script Created on: 28-May-2018
# Reference: http://www.datacarpentry.org/R-ecology-lesson/05-r-and-databases.html

# create a directory
dir.create("data", showWarnings = FALSE)
# download the data file
download.file(url = "https://ndownloader.figshare.com/files/2292171",
              destfile = "data/portal_mammals.sqlite", mode = "wb")

# Connecting to database
library(dplyr)
library(dbplyr)
library(RSQLite)
mammals <- DBI::dbConnect(RSQLite::SQLite(), "data/portal_mammals.sqlite")
#Let’s take a closer look at the mammals database we just connected to:
src_dbi(mammals)

# Querying the database with the SQL syntax
# To connect to tables within a database, you can use the tbl() function from dplyr. This function can be used to send SQL queries to the database. To demonstrate this functionality, let’s select the columns “year”, “species_id”, and “plot_id” from the surveys table:
tbl(mammals, sql("SELECT year, species_id, plot_id FROM surveys"))

# Querying the database with the dplyr syntax
surveys <- tbl(mammals, "surveys")
surveys %>%
  select(year, species_id, plot_id)
head(surveys, n=10)
#nrow(surveys)
show_query(head(surveys, n = 10))

# Simple database queries
surveys %>%
  filter(weight < 5) %>%
  select(species_id, sex, weight)
