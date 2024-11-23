#!/bin/bash

sketchybar --add item media e \
           --set media label.color=0xffa37acc \
                       label.max_chars=20 \
                       icon.padding_left=10 \
                       scroll_texts=on \
                       icon=􀑪             \
                       icon.color=0xffa37acc   \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
