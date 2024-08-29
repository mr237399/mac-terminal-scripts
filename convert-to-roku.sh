
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi


filename=$(basename -- "$1")
filename_without_extension="${filename%.*}"

HandBrakeCLI --preset 'Roku 1080p30 Surround' --format av_mp4 --align-av -markers -i "${filename} -o "${filename_without_extension}.mp4"
