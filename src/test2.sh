#!/bin/sh

MYPATH=$PWD/.libs
DEV=/dev/video0

#gst-launch v4l2src ! video/x-raw-yuv,width=320,height=240 !  ffmpegcolorspace  !  ffmpegcolorspace ! xvimagesink

# on my webcam:
#1280x720
#960x540
#800x448
#640x480

gst-launch -e --gst-plugin-path=${MYPATH}  v4l2src device=${DEV} ! video/x-raw-yuv,width=800,height=448 !  ffmpegcolorspace  ! cmplxtrans !  ffmpegcolorspace ! xvimagesink

#gst-inspect --gst-plugin-path=${MYPATH}   complextransf

#gst-launch --gst-plugin-path=${MYPATH} -e videotestsrc pattern="snow" ! cmplxtrans ! video/x-raw-yuv, framerate=20/1, width=200, height=150 ! videomixer name=mix ! ffmpegcolorspace ! xvimagesink videotestsrc !  cmplxtrans ! video/x-raw-yuv, framerate=10/1, width=640, height=360 ! mix.
