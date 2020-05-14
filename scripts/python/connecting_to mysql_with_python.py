# -*- coding: utf-8 -*-
"""
Created on Fri May  8 22:02:47 2020
Revised on May 14 9:17 AM 2020

@author: Ashish
"""
# Using mysqlclient for windows
# See documentation https://mysqlclient.readthedocs.io/
# Install it by pip install mysqlclient
# check installation by opening a command prompt
# window and type command pip -list
# at the time of writing this script, the mysqlclient version is 1.4.6

import pymysql

db = pymysql.connect(host="localhost", user="root",
                     password="ashoo", db="db_practise")
print(db)
cursor = db.cursor()
cursor.execute("SELECT * from deathrow")
data = cursor.fetchall()
for row in data:
    print(row)
db.close()
