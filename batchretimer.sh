#!/usr/bin/env bash

find "$1" -type f | while read videoPath; do
  videoFile=$(basename "$videoPath")

  if [[ $videoFile == *".mkv"* ]]; then
    fileName="${videoFile%.*}"
    subtitleName="${fileName}.srt"

    ./alass-linux64 $videoFile $subtitleName $subtitleName
  fi

done
