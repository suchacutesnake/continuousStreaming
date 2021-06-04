#!/bin/sh
while true
do
    lofigirl="$(youtube-dl -g https://www.youtube.com/watch?v=5qap5aO4i9A)"
    youtube="$(/usr/local/ffmpeg4/bin/ffmpeg -re -i ${lofigirl} -vcodec copy -acodec copy -f flv  -flvflags no_duration_filesize "rtmp://1.15.170.82/testmusic")"
    echo "${youtube}"
    sleep 8
done
