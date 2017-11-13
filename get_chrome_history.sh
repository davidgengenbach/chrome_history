#!/usr/bin/env bash

# Linux
#SQLITE_PATH="~/.config/google-chrome/Default"

# OSX
SQLITE_PATH="~/Library/Application Support/Google/Chrome/Default"
EXPORT_LOCATION="data/history.txt"

mkdir -p "data"

sqlite3 "$SQLITE_PATH"/History "select datetime(last_visit_time/1000000-11644473600,'unixepoch'),url from  urls order by last_visit_time desc" > "$EXPORT_LOCATION"