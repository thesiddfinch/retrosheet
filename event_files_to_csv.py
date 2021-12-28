#!/usr/bin/env python3

import os
import config
from sys import exit
import csv
import subprocess

csv_dir = config.csvfiles

if not config.make_sure_path_is_present_and_a_dir_p(csv_dir):
    exit(1)

if not os.path.isdir(config.eventfiles):
    print(
        "Event directory " +
        config.eventfiles +
        "is not a directory or not present")
    exit(1)

for filename in (os.listdir(config.eventfiles)):

    match = config.team_re.match(filename)
    if match:
        year = match.group(2)
        type = "team"
        print("Team file for year %s" % year)
        fn = year + "-" + type + ".csv"
        outfile = os.path.join(csv_dir, fn)
        f_reader = open(os.path.join(config.eventfiles, filename), 'rt')
        f_writer = open(outfile, 'a')
        reader = csv.reader(f_reader, delimiter=',')
        writer = csv.writer(f_writer, delimiter=',')
        for row in reader:
            row.insert(0, year)
            writer.writerow(row)
        f_reader.close()
        f_writer.close()

    match = config.roster_re.match(filename)
    if match:
        year = match.group(2)
        team = match.group(1)
        type = "roster"
        print(
            "Roster file for %s year %s" %
            (match.group(1), match.group(2)))
        fn = year + "-" + type + ".csv"
        outfile = os.path.join(csv_dir, fn)
        f_reader = open(os.path.join(config.eventfiles, filename), 'rt')
        f_writer = open(outfile, 'a')
        reader = csv.reader(f_reader, delimiter=',')
        writer = csv.writer(f_writer, delimiter=',')
        for row in reader:
            row.insert(0, year)
            row.insert(1, team)
            writer.writerow(row)
        f_reader.close()
        f_writer.close()

    match = config.event_re.match(filename)
    if match:
        print(
            "Event file for %s year %s" %
            (match.group(2), match.group(1)))
        year = match.group(1)
        team = match.group(2)
        types = list(config.opt.keys())
        for type in types:
            print("Working on %s for %s, %s" % (type, year, team))
            fn = year + "-" + type + ".csv"
            outfile = os.path.join(csv_dir, fn)
            os.chdir(config.eventfiles)
            program = "cw" + type
            bin_path = os.path.join(config.chadwick, "bin", program)
            options = " -y " + year + config.opt[type]
            run = bin_path + options + filename + " 2>/dev/null"
            out = subprocess.getstatusoutput(run)
            if out[0] == 0:
                output = open(outfile, "a")
                output.write(out[1])
                output.write("\n")
                output.close()
