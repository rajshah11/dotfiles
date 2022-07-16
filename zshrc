export OMZSH="$HOME/.ohmyzsh"
fpath+=($HOME/.pure)
zstyle :prompt:pure:git:branch color '#6699CC'

ZSH_THEME=""

plugins=(aliases alias-finder battery git ruby thefuck)

gh_plugins=(zsh-z zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $OMZSH/oh-my-zsh.sh
RPROMPT='$(battery_pct_prompt)'
autoload -U promptinit; promptinit
prompt pure

autoload -Uz compinit; compinit
autoload -Uz bashcompinit; bashcompinit
source $HOME/.bash_profile
source $HOME/.bashrc

source $HOME/.zshrc.private.zsh

# Load all scripts in oh-my-zsh custom folder
for file in $HOME/.ohmyzsh-custom/*; do
    source "$file"
done
unset file

for plugin ($gh_plugins); do
    source "$HOME/.ohmyzsh-plugins/$plugin/$plugin.plugin.zsh"
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