#!/usr/bin/env bash

if [ ! -d "./frames" ]; then
    echo "run 'voronoi-opengl --video' first"
    exit 1
fi

# create a video from the frames created when using the --video flag
ffmpeg -framerate 60 -i ./frames/frame-%03d.png -c:v libx264 -pix_fmt yuv420p output.mp4
