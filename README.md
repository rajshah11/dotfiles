# dotfiles to turbo boost your ZSH productivity on MacOS 🚀

<span style="font-size:larger;">After installation of these dotfiles, you will have a smooth, minimal ZSH prompt with awesome aliases, and features like alias finder, autosuggestions, syntax highlighting and history substring search.<span style="font-size:larger;">

The installation also backs up your old dotfiles for recovery. You can also create a copy of `.zshrc` file manually if you want to be extra cautious.

## Installation

- Download or clone this repository to your home (~) folder
- Run `make` from the root of this repository
- Open a `zsh` terminal again after installation

### Custom Installation
If you want to download or clone the repository, or backup your files in a custom folder, make sure to change the `DOTFILES` and `BACKUPDOTFILES` variables in [make.sh](./make.sh).

## My favorite plugins that come with the installation
- [git](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git) 
- [pure](https://github.com/sindresorhus/pure)
- [aliases](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/aliases) 
- [alias-finder](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/alias-finder) 
- [zsh-z](https://github.com/agkozak/zsh-z) 
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) 
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) 
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

## Aliases
A lot of aliases come packaged with the Oh My Zsh plugins installed
- Just run `acs` to see a list of all aliases. (`acs --help` for more info)
- Run `alias-finder` to check if there is an alias for something you use often. (Ex. `alias-finder 'git branch'`)(`alias-finder --help for more info`)

### Custom alias file 
If you want to add an alias, you can add it here - [./ohmyzsh-custom/aliases.zsh](./ohmyzsh-custom/aliases.zsh). <br>
If you think your added aliases will be useful to others, feel free to create a PR.

### Tips and Notes
- The `zsh-history-substring-search` plugin is configured to go through suggestions using the UP-DOWN arrows. Just type the substring to search and press UP or DOWN for suggestions!
- The shortcuts for the `zsh-autosuggestions` can be found in the [.zshrc](./zshrc). (`^ == Ctrl key`)
- [`zsh-z`](https://github.com/agkozak/zsh-z) is an awesome plugin to jump between directories. Run `z --help` for more info.
