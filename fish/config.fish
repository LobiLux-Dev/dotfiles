set fish_greeting

if status is-interactive
    fastfetch
    starship init fish | source
    # Commands to run in interactive sessions can go here
end

alias ls 'eza -al --color=always --group-directories-first --icons' # preferred listing
alias la 'eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'eza -l --color=always --group-directories-first --icons'  # long format
alias lt 'eza -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles

alias cat 'bat --style header --style snip --style changes --style header'

alias grep 'grep --color=auto'

# bun
set -x BUN_INSTALL "$HOME/.bun"
set -x PATH $BUN_INSTALL/bin $PATH

source "$HOME/.cargo/env.fish"
