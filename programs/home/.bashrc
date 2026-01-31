test -f ~/.bash_aliases && . ~/.bash_aliases

set -o vi
bind -m vi-command '"\e[2~": vi-insertion-mode'

set -o ignoreeof
stty -ixon

FORMAT_RESET="\e[0m"
HOST="\e[0;32m"
COLON="\e[0;37m"
DIRECTORY="\e[0;34m"
TIME_COLOR="\e[0;37m"
PROMPT_SYMBOL="\e[0;37m"

PROMPT_COMMAND='__git_ps1 " ┌──\[${TIME_COLOR}\](\A)\[${FORMAT_RESET}\] \[${HOST}\]eden\[${COLON}\]:\[${DIRECTORY}\]\w\[${FORMAT_RESET}\]" "\n\[${PROMPT_SYMBOL}\]> \[${FORMAT_RESET}\]"'

bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string \1\e[1;32m\e[2 q\2[N]'
bind 'set vi-ins-mode-string \1\e[1;94m\e[5 q\2[I]'
bind -m vi-insert -r '\C-s'
bind -m vi-command -r '\C-s'

eval "$(zoxide init --cmd cd bash)"

eval "$(fzf --bash)"

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export GPG_TTY=$(tty)
