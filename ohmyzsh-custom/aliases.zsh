# Enable aliases to be sudo’ed
alias sudo="sudo "

# Shortcuts
alias o="open"
alias oo="open ."
alias e="code"
alias ec="code ."

# Open webpage
function ow(){
if [[ "$1" == "https://*" || "$1" == "http://*" ]];
then
    open $1
else
    local pre="https://"
    open ${pre}$1
fi
}

# Git plugin aliases extensions
alias grbi="grb -i"

alias git_remove_branches_not_in_remote="git branch -vv | grep ': gone]' | grep -v '\*' | awk '{print \$1}'>/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -D </tmp/merged-branches"
alias kill_chrome="ps -e | grep -i '/Applications/Google Chrome.app/Contents/MacOS/Google Chrom[e]' | awk '{print \$1}' | xargs -r kill -9"
