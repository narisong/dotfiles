# set -o vi

# Add posh git - https://github.com/lyze/posh-git-sh
source ~/.git_prompt.sh
export PROMPT_COMMAND='__posh_git_ps1 "\\[\[\e[0;32m\]\u \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND

update_terminal_cwd() {
    # Identify the directory using a "file:" scheme URL,
    # including the host name to disambiguate local vs.
    # remote connections. Percent-escape spaces.
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
}

# Add flutter to PATH
export PATH=$PATH:/Users/risongna/go/bin:/Users/risongna/Risong/libs/flutter/bin


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Update histcontrol to erase dups. When using up arrow to view bash history, it will exclude duplicate commands
export HISTCONTROL=ignoreboth:erasedups
