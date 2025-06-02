#!/usr/bin/env bash

find "$1" -type f | while read videoPath; do
  videoFile=$(basename "$videoPath")

  if [[ $videoFile == *".mkv"* ]]; then
    #lastPosition=${#videoFile}-3
    #subtitleName=$(cut -c 1-$lastPosition <<<$videoFile)
    fileName="${videoFile%.*}"
    subtitleName="${fileName}.srt"

    ./alass-linux64 $videoFile $subtitleName $subtitleName
  fi

  #duration=$(ffmpeg -i "$videoPath" 2>&1 | grep Duration)
  #echo "$videoFile: $duration"
done
