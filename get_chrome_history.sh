#!/usr/bin/env bash

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Linux
#SQLITE_PATH="~/.config/google-chrome/Default"

# OSX
SQLITE_PATH=~/Library/Application\ Support/Google/Chrome/Default
EXPORT_LOCATION="data/history.txt"

mkdir -p "data"
cd "$SQLITE_PATH" || echo "ERROR: Could not enter $SQLITE_PATH"

sqlite3 History "select datetime(last_visit_time/1000000-11644473600,'unixepoch'),url from  urls order by last_visit_time desc" > "$HERE/$EXPORT_LOCATION" || echo -e "\n\nERROR: There was an error! Please make sure that Chrome is closed otherwise this will fail."