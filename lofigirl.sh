#!/bin/sh
while true
do
    lofigirl="$(youtube-dl -g https://www.youtube.com/watch?v=5qap5aO4i9A)"
    #echo "${url}"
    #local="$(ffmpeg -re  -stream_loop -1 -i eo.flv -vcodec copy -acodec aac -f flv "rtmp://live-push.bilivideo.com/live-bvc/?streamname=live_14173132_6215371&key=1d03e03209415914c96895c94ad78b48&schedule=rtmp&pflag=1")"
    #echo "${local}"
    youtube="$(ffmpeg -re -i ${lofigirl} -vcodec copy -acodec copy -f flv  -flvflags no_duration_filesize "rtmp://1.15.170.82/testmusic")"
    echo "${youtube}"
done