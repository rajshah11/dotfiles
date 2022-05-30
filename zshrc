export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(aliases alias-finder git ruby thefuck)

gh_plugins=(zsh-z zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit; compinit
autoload -Uz bashcompinit; bashcompinit
source ~/.bash_profile
source ~/.bashrc

source ~/.zshrc.private.zsh

# Load all scripts in oh-my-zsh custom folder
for file in ~/dotfiles/ohmyzsh-custom/*; do
    source "$file"
done
unset file 

for plugin ($gh_plugins); do
    source "$HOME/dotfiles/ohmyzsh-plugins/$plugin/$plugin.plugin.zsh"
done
unset plugin

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