export ZSH="/Users/rajshah/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(aliases alias-finder git ruby thefuck zsh-z zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit; compinit
autoload -Uz bashcompinit; bashcompinit
source ~/.bash_profile
source ~/.bashrc

source ~/.zshrc.private.zsh

# Load all scripts in oh-my-zsh script folder
for file in ~/dotfiles/oh-my-zsh/*; do
    source "$file"
done

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

bindkey '^a' autosuggest-accept
bindkey '^t' autosuggest-toggle
bindkey '^c' autosuggest-clear
bindkey '^f' autosuggest-fetch
bindkey '^e' autosuggest-execute

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down