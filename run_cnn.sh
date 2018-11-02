#!/bin/sh

ffmpeg -loglevel error -i hls+https://s3.amazonaws.com/cnn-assets/app-assets/cnn-lite/liteaudio.m3u8 -ar 16000 -ac 1 -f wav -acodec pcm_s16le - | bin/julius -C my.jconf | grep "^sentence"
