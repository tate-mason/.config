#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=0xffa37acc \
                                 icon.color=0xfffafafa \
                                 icon.font="sketchybar-app-font:Regular:16.0" \
                                 label.color=0xfffafafa \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
