# Created by Hanlin Hu
# On Nov 06 2016
# Copyright: All rights reserved

# Create database file from existing sql file

import sqlite3

db = sqlite3.connect('../database/Molecules.db')
cursor = db.cursor()

# Open and read the file as a single buffer
sqlFile = open('../sql/molecules.sql', 'r')
sqlLine = sqlFile.read()
sqlCommend = sqlLine.split(';')

# Execute SQL commends line by line
for line in sqlCommend:

    cursor.execute(line)

sqlFile.close()
