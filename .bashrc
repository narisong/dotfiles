# Add posh git - https://github.com/lyze/posh-git-sh
source ~/.git_prompt.sh
export PROMPT_COMMAND='__posh_git_ps1 "\\[\[\e[0;32m\]\u \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND