set -o vi

alias playlist="mpv --no-video https://www.youtube.com/playlist?list=PLW2t6sJ0lzE1sdVqyeiMq9-u7gWyJUjmr"
alias ga="git add ."
alias gs="git status"
alias gp="git push"
alias gc="git commit -m 'commitmsg'"
alias gpp="ga;gs;gc;gp"
alias n="nvim"

alias log_as_kg="git config user.name 'kglowka'; git config user.email 'k.glowka.235@studms.ug.ed'"
alias log_as_ed="git config user.name 'Eden1011'; git config user.email 'glovkakrzys252@gmail.com'"

export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
PS1="(\A) \u@\h:\w> "
bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string "[NORMAL] "'
bind 'set vi-ins-mode-string "[INSERT] "'

eval "$(zoxide init --cmd cd bash)"

test -s ~/.alias && . ~/.alias || true

alias shadowmp3="shadowmp3.sh"

export QT_QPA_PLATFORM=wayland

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH=$PATH:/home/krzys1234/.sdkman/candidates/groovy/current/bin:/home/krzys1234/.sdkman/candidates/gradle/current/bin:/home/krzys1234/.sdkman/candidates/java/current/bin:/home/krzys1234/.local/bin:/usr/local/bin:/usr/bin:/bin:/home/krzys1234/ShadowMP3
. "/home/krzys1234/.deno/env"
