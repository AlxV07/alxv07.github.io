# === .bashrc ===
# (also .zshrc base)

set -o vi

HISTSIZE=100000
SAVEHIST=100000

alias "gp"="git push"
alias "gc"="git commit"
alias "ga"="git add"
alias "gs"="git status"

alias "py"="python"
alias "nv"="nvim"

alias "~"="cd ~"
alias ".."="cd .."
alias "..."="cd ../.."
alias "ls"="ls --color=always"
alias "l"="ls -lah"
alias "pgbreak"="echo \"\n\n\n\""

# alias "cptc"="pbcopy"  # MAC
# alias "cptc"="xclip -selection clipboard"  # LINUX
# alias "cptc"="clip" # WINDOWS

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# export PS1="\[\e[38;5;136m\]\u@\h \[\e[38;5;64m\]\w \[\e[0m\]$ "  # WINDOWS Git Bash

# MAC Homebrew
# export HOMEBREW_NO_AUTO_UPDATE=1  
# eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ $- == *i* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

chrome() {  # open file(s) in chrome from CLI; e.g. `chrome a.txt b.pdf c.json`
    # local CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" # MAC
    # local CHROME=google-chrome-stable # LINUX
    # local CHROME=chrome # WINDOWS

    if [ $# -eq 0 ]; then
        "$CHROME"
        return
    fi
    for file in "$@"; do
        if [ -e "$file" ]; then
            local real_path=$(realpath "$file")

            # MAC / LINUX
            # "$CHROME" "$real_path"

            # WINDOWS
            # local win_path=$(cygpath -w "$real_path")  
            # start "$CHROME" "$win_path"

        else
            echo "Error: '$file' does not exist." >&2
        fi
    done
}

