export OMZSH="$HOME/.ohmyzsh"
export EDITOR="code -w"

ZSH_THEME=""

plugins=(aliases alias-finder battery git ruby common-aliases git-auto-fetch)

gh_plugins=(zsh-z zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search almostontop)

source $OMZSH/oh-my-zsh.sh
RPROMPT='$(battery_pct_prompt)'
autoload -U promptinit; promptinit

if [ -f "$HOME/.bash_profile" ]; then
    source $HOME/.bash_profile
fi

if [ -f "$HOME/.bashrc" ]; then
    source $HOME/.bashrc
fi

if [ -f "$HOME/.zshrc.private.zsh" ]; then
    source $HOME/.zshrc.private.zsh
fi

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

# ~/.zshrc

zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

bindkey '^a' autosuggest-accept
bindkey '^t' autosuggest-toggle
bindkey '^c' autosuggest-clear
bindkey '^f' autosuggest-fetch
bindkey '^e' autosuggest-execute

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down