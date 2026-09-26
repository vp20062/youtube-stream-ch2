#!/bin/bash
while true; do
  ffmpeg -re -loop 1 -i bg.png -stream_loop -1 -i audio_ch2.m4a \
    -vf "scale=1280:720" -c:v libx264 -preset ultrafast -tune stillimage \
    -pix_fmt yuv420p -r 24 -g 48 -c:a aac -b:a 128k -ar 44100 \
    -f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
  sleep 2
done
