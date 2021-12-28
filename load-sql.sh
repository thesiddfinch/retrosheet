#!/bin/sh

for a in `ls sql/*.sql`
do 
  sqlite3 db/retrosheet.db < $a
done
