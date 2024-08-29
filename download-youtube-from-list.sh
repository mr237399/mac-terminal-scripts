#!/usr/bin/env bash
echo "$0:"
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Read the file line by line
while IFS= read -r line
do
  echo "Trying to download $line"
  url=$line
  yt-dlp ${url} --restrict-filenames --write-auto-subs --write-subs --sub-langs "en.*,es*"
done < "$1"




#URL=$1
#/opt/homebrew/Cellar/yt-dlp/2024.7.2/bin/yt-dlp ${1} --restrict-filenames --write-auto-subs --write-subs --sub-langs "en.*,es*"
