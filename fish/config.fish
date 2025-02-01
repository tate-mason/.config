if status is-interactive
    # Commands to run in interactive sessions can go here
end
set --global --export HOMEBREW_PREFIX "/opt/homebrew";
set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set --global --export HOMEBREW_REPOSITORY "/opt/homebrew";
fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;

fisher_add_path $path "~/.juliaup/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"
alias ls="colorls"
alias sp="spotify_player"
fastfetch

