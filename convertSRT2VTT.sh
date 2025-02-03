#!/usr/bin/env bash

for i in {4..22}; do
  printf -v inputFilename "%05d.srt" "$i"
  printf -v outputFilename "%05d.vtt" "$i"
  printf "Converting %s to %s\n" "$inputFilename" "$outputFilename"
  ffmpeg -i "$inputFilename" "$outputFilename"
done
