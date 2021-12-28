#!/bin/sh

for file in `ls csv/*.csv`
do
  case "$file" in
    *-team*) table=teams ;;
    *-sub*)  table=subs ;;
    *-game*) table=games ;;
    *-event*) table=events ;;
    *-roster*) table=rosters ;;
    *) echo 1>&2 "no table for $file" ; exit 1;;
  esac
  echo ".separator ,"
  echo ".import $file $table"
done
exit 0
