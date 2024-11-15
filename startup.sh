#!/bin/bash

# Creating the first window called HomeBase
tmux new-session -d -s HomeBase

# Create the first pane with NVIM
tmux send-keys -t HomeBase "nvim" C-m

# Split that window vertically and send a spotify command to the new pane
tmux split-window -v -t HomeBase "spotify_player" C-m

tmux attach-session -t HomeBase
