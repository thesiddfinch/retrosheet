SQL file format ...

basically we'll be using something like this to execute SQL files
progmattically:

import os,sqlite3
db = sqlite3.connect("/path/to/db")
cur = db.cursor()

for file in sorted(os.listdir(os.path.join(os.getcwd(),"sql"))): 
    with open(os.path.join(os.getcwd(),"sql",file),'r') as sql_file: 
        sql=sql_file.read().splitlines() 
        for line in sql: 
          retro.execute(line) 

SQL statements will need to be all in one line. Not ideal for 
viewing, but let's us be lazy. Should be fairly simple to write 
SQL expander, deflater if needed.