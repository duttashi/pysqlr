# -*- coding: utf-8 -*-
"""
Created on Thu Jun 18 17:01:16 2020

@author: Ashish
"""

import pymongo
print(pymongo.version)

# Step 1: connect to your Atlas cluster
client = pymongo.MongoClient("mongodb+srv://dbUser:papa%23123@cluster0-s47sx.mongodb.net/LearnMongodb?retryWrites=true&w=majority")

# print(db)
# note: if there is a dnspython not installed error. Then launch command prompt and 
# install the module as pip install pymongo[srv]. It should now work

# Insert Data into your Atlas Cluster with the PyMongo Driver
# reference: https://docs.atlas.mongodb.com/tutorial/insert-data-into-your-cluster/

# Step 2: create a new database in cluster
# This command creates a new database on your cluster called gettingStarted. The variable db points to your new database.
db = client.gettingStarted
# Step 3: create a table or collection in this database
people = db.people # This command creates a new collection in your gettingStarted database called people. The variable people points to your new collection.
# Step 4: Create a new document to insert into your collection. Or add data to your table
import datetime
personDocument = {
  "name": { "first": "Alan", "last": "Turing" },
  "birth": datetime.datetime(1912, 6, 23),
  "death": datetime.datetime(1954, 6, 7),
  "contribs": [ "Turing machine", "Turing test", "Turingery" ],
  "views": 1250000
}
# Step 5: Insert the document into your collection
people.insert_one(personDocument)
# Step 6: Viewig the data inserted in your Atlas cluster
print(people.find_one({ "name.last": "Turing" }))
