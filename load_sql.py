#!/usr/env/env python3

from os import path, getcwd, listdir
import sqlite3
import config

dbFile = path.join(config.dbdir,config.dbname)

dbConn = sqlite3.connect(dbFile)
retro = dbConn.cursor()

for file in sorted(listdir(config.sqldir)):
    if file.endswith(".sql"):
        with open(path.join(config.sqldir,file),'r') as fp:
            for sql in fp.read().splitlines(): 
                if sql: 
                    retro.execute(sql)

