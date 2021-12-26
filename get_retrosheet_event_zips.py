#!/usr/bin/env python3

from io import BytesIO
from os import path,mkdir
from sys import exit
from urllib.request import urlopen
from zipfile import ZipFile
from datetime import date
import traceback
import config

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
    ## If we get here, the path is not present, create it.
    print("Creating {}".format(directory))
    try:
        mkdir(eventfiles)
    except Exception as err:
        print("Error: " + str(err))
        ## print(traceback.format_exc())
        return False
    return True

def grab_zipfile_from_url_and_unzip_to_dir(url,directory):
    print("Downloading {} and unzipping to {}".format(url,directory))
    try:
        with urlopen(url) as zipurl:
            with ZipFile(BytesIO(zipurl.read())) as zipfile:
                    zipfile.extractall(directory)
    except Exception as err:
        print("Error: " + str(err))
        ## print(traceback.format_exc())
        exit(1)

## we'll use config.py as a shared config file
base_url=config.base_url
start_decade=config.start_decade
eventfiles=config.eventfiles

## Make sure the output directory is there for the unzipped
## event files
if not make_sure_path_is_present_and_a_dir_p(eventfiles):
    exit(1)

## For each decade, get the event files via url, unzip and enjoy
for decade in range(start_decade,date.today().year,10):
    download_url="%s%4dseve.zip" % (base_url,decade)
    grab_zipfile_from_url_and_unzip_to_dir(download_url,eventfiles)
