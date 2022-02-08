from os import path, getcwd, environ, mkdir
import re

base_url = "https://retrosheet.org/events/"
start_decade = 1910
#eventfiles = path.join(getcwd(), "eventfiles")
eventfiles = path.join(getcwd(),"../chadwick-retrosheet/event/regular")
csvfiles = path.join(getcwd(), "csv")
dbdir = path.join(getcwd(),"db")
dbname = "retrosheet.db"
sqldir = path.join(getcwd(),"sql")

chadwick = path.join(environ['HOME'], "chadwick")
game = path.join(chadwick, "bin", "cwgame")
event = path.join(chadwick, "bin", "cwevent")
sub = path.join(chadwick, "bin", "cwsub")

opt = {}
opt["event"] = " -q -f 0-96 -x 0-62 "
opt["game"] = " -q -f 0-83 "
opt["sub"] = " -q -f 0-9 "

# Regular expressions to make the various
# files.
# TEAM2009
team_re = re.compile('(TEAM)(\\d{4})')
# CLE2009.ROS
roster_re = re.compile('(\\w{3})(\\d{4}).ROS')
# 2009CLE.EVA
event_re = re.compile('(\\d{4})(\\w{3}).EV[AN]')

def make_sure_path_is_present_and_a_dir_p(directory):
    """
    make sure path is present and a directory
    """
    if path.exists(directory):
        if path.isdir(directory):
            return True
        else:
            print("{} is present, but not a directory".format(directory))
            return False
    # If we get here, the path is not present, create it.
    print("Creating {}".format(directory))
    try:
        mkdir(directory)
    except Exception as err:
        print("Error: " + str(err))
        # print(traceback.format_exc())
        return False
    return True

for directory in eventfiles, csvfiles, dbdir:
    make_sure_path_is_present_and_a_dir_p(directory)

