#!/bin/bash

# Creating the first window called HomeBase
tmux new-session -d -s HomeBase

# Create the first pane with NVIM
tmux send-keys -t HomeBase "nvim" C-m

tmux attach-session -t HomeBase
