#!/bin/sh

MYPATH=$PWD/.libs
DEV=/dev/video0

#gst-launch v4l2src ! video/x-raw-yuv,width=320,height=240 !  ffmpegcolorspace  !  ffmpegcolorspace ! xvimagesink

gst-launch -e --gst-plugin-path=${MYPATH}  v4l2src device=${DEV} ! video/x-raw-yuv,width=800,height=600 !  ffmpegcolorspace  ! cmplxtrans !  ffmpegcolorspace ! xvimagesink

#gst-launch -e --gst-plugin-path=${MYPATH}  v4l2src device=${DEV} ! video/x-raw-yuv,width=640,height=480 !  ffmpegcolorspace  ! cmplxtrans !  ffmpegcolorspace ! xvimagesink

#gst-inspect --gst-plugin-path=${MYPATH}   complextransf

#gst-launch --gst-plugin-path=${MYPATH} -e videotestsrc pattern="snow" ! cmplxtrans ! video/x-raw-yuv, framerate=20/1, width=200, height=150 ! videomixer name=mix ! ffmpegcolorspace ! xvimagesink videotestsrc !  cmplxtrans ! video/x-raw-yuv, framerate=10/1, width=640, height=360 ! mix.
