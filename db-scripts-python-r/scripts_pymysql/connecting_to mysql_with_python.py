# -*- coding: utf-8 -*-
"""
Created on Fri May  8 22:02:47 2020
Revised on May 14 9:17 AM 2020

@author: Ashish
"""
# Using mysql.connector for windows
# See documentation https://dev.mysql.com/doc/connector-python/en/connector-python-example-connecting.html
# SO post: https://stackoverflow.com/questions/4960048/how-can-i-connect-to-mysql-in-python-3-on-windows
# Install it by downloading the software from https://dev.mysql.com/downloads/connector/python/
# check installation by opening a command prompt
# window and type command pip -list
# at the time of writing this script, the mysql.connector version is 8.0.20

import mysql.connector as conx

db = conx.connect(host="localhost", user="root", 
                  password="ashoo", db="db_practise")
print(db)
cursor = db.cursor()
cursor.execute("SELECT * from deathrow")
data = cursor.fetchall()
for row in data:
    print(row)
db.close()
