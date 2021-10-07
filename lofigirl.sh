#!/bin/sh
while true
do
    lofigirl="$(youtube-dl -g https://www.youtube.com/watch?v=5qap5aO4i9A)"
    youtube="$(ffmpeg -re -i ${lofigirl} -vcodec copy -acodec copy -bsf:a aac_adtstoasc -f flv -flvflags no_duration_filesize "rtmp://66.42.100.165:1935/live/livestream.m3u8")"
    echo "${youtube}"
    sleep 10
done
