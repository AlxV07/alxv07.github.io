# === .bashrc ===
# (also .zshrc base)

set -o vi

HISTSIZE=10000
SAVEHIST=10000

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
