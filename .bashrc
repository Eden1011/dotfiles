#Source .bash_profile in case using a terminal that launches a non-login shell
#This should always be sourced first!
test -f ~/.bash_profile && . ~/.bash_profile
#Source aliases
test -f ~/.alias && . ~/.alias

#Set VI mode in bash
set -o vi
bind -m vi-command '"\e[2~": vi-insertion-mode'

#Ignore ^D from exiting terminal
set -o ignoreeof

FORMAT_RESET="\e[0m"
HOST="\e[0;32m"
COLON="\e[0;37m"
DIRECTORY="\e[0;34m"
TIME_COLOR="\e[0;37m"
PROMPT_SYMBOL="\e[0;37m"
PS1=" \[${TIME_COLOR}\](\A)\[${FORMAT_RESET}\] \[${HOST}\]\u\[${COLON}\]:\[${DIRECTORY}\]\w\[${PROMPT_SYMBOL}\]> \[${FORMAT_RESET}\]"

bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string \1\e[1;32m\e[2 q\2[N]'
bind 'set vi-ins-mode-string \1\e[1;94m\e[5 q\2[I]'

#Zoxide `cd` substitution
eval "$(zoxide init --cmd cd bash)"

#SDKMAN sourcing in current shell (binary is called `sdk`)
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
