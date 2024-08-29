
URL=$1
yt-dlp ${URL} --restrict-filenames --write-auto-subs --write-subs --sub-langs "en.*,es*"
