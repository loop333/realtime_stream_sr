#!/bin/sh

ffmpeg -loglevel error -i hls+http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_vlow/llnw/bbc_world_service.m3u8 -ar 16000 -ac 1 -f wav -acodec pcm_s16le - | bin/julius -C my.jconf | grep "^sentence"
