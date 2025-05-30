set -o vi
bind -m vi-command '"\e[2~": vi-insertion-mode'

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

FORMAT_RESET="\e[0m"
HOST="\e[0;32m"
COLON="\e[0;37m"
DIRECTORY="\e[0;34m"
TIME_COLOR="\e[0;37m"
PROMPT_SYMBOL="\e[0;37m"
PS1=" \[${TIME_COLOR}\](\A)\[${FORMAT_RESET}\] \[${HOST}\]\u@\h\[${COLON}\]:\[${DIRECTORY}\]\w\[${PROMPT_SYMBOL}\]> \[${FORMAT_RESET}\]"

bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string \1\e[1;32m\e[2 q\2[NORMAL]'
bind 'set vi-ins-mode-string \1\e[1;94m\e[5 q\2[INSERT]'

eval "$(zoxide init --cmd cd bash)"

test -s ~/.alias && . ~/.alias || true

alias shadowmp3="shadowmp3.sh"

export QT_QPA_PLATFORM=wayland

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH=$PATH:/home/krzys1234/.sdkman/candidates/groovy/current/bin:/home/krzys1234/.sdkman/candidates/gradle/current/bin:/home/krzys1234/.sdkman/candidates/java/current/bin:/home/krzys1234/.local/bin:/usr/local/bin:/usr/bin:/bin:/home/krzys1234/ShadowMP3
. "/home/krzys1234/.deno/env"
