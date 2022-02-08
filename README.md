# retrosheet
Various Retrosheet work

 * config.py - various settings that will be shared between python
   scripts. Not the best way to have a config setting in python, 
   but workable here.

 * get_retrosheet_event_zips.py - grap the decade event files in zip
   format from https://retrosheet.org. Unzip them and write to a 
   directory.

 * NOTE: You can skip the above if you download use the files from 
   https://github.com/chadwickbureau/retrosheet and adjust config.py
   to point to the location of that repo, i.e.:
   ```
   retrodir $ git clone https://github.com/chadwickbureau/retrosheet \
              ../chadwick-retrosheet  
   retrodir $ sed -i.bck -e 's}^eventfiles = .*}eventfiles = "../chadwick-retrosheet/event/regular"}g' config.py
   ```
   This will work on Mac and Linux/BSD systems. Windows folks will probably
   need to open config.py in an editor and manually edit the file. 
