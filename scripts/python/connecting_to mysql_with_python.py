# -*- coding: utf-8 -*-
"""
Created on Fri May  8 22:02:47 2020

@author: Ashish
"""

# import pymysql
# pymysql.install_as_MySQLdb()
import MySQLdb
db = MySQLdb.connect("localhost" , "root" , "ashoo", db="db_practise")
print(db)
cursor = db.cursor()
cursor.execute("SELECT * from deathrow")
data=cursor.fetchall()
for row in data :
    print (row)
db.close()