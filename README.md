# dotfiles to turbo boost your ZSH and Tmux productivity 🚀

<span style="font-size:larger;">After installation of these dotfiles, you will have a smooth, minimal ZSH prompt with awesome aliases, and features like alias finder, autosuggestions, syntax highlighting and history substring search. Plus a modern tmux configuration with session persistence, intuitive keybindings, and git branch-aware window names.<span style="font-size:larger;">

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

## Tmux Configuration 🖥️

A modern, user-friendly tmux configuration with Stripe purple theme is included.

### Features
- **Session Persistence**: Auto-saves every 15 minutes and restores on tmux restart
- **Mouse Support**: Click to switch panes, drag to resize
- **Git Branch Awareness**: Window names show current git branch (or directory name as fallback)
- **SSH Detection**: Orange badge appears in status bar when connected via SSH
- **10,000 Line History**: Scroll back through command outputs
- **Vim Integration**: Vi-mode copy/paste and seamless vim-tmux navigation

### Quick Start
After running `make dotfiles`, start tmux and press `C-a I` (Control-a then Shift-I) to install tmux plugins.

### Key Bindings
**Prefix**: `C-a` (Control-a)

**Essential Commands**:
- `C-a |` - Split pane vertically
- `C-a -` - Split pane horizontally
- `C-a h/j/k/l` - Navigate between panes (vim-style)
- `C-a H/J/K/L` - Resize panes
- `C-a c` - Create new window
- `C-a n` - Next window
- `C-a p` - Previous window
- `C-a r` - Reload tmux config
- `C-a S` - Toggle pane synchronization (type in all panes at once)
- `C-a z` - Toggle pane zoom (fullscreen)
- `C-a Escape` - Enter copy mode

**In Copy Mode** (after `C-a Escape`):
- `v` - Start visual selection
- `y` - Copy selection
- `q` - Exit copy mode

### Window Naming
Tmux windows automatically show:
- **Local**: `hostname:branch-name` (e.g., `MacBook:main`)
- **SSH**: `ssh:hostname:branch-name` (e.g., `ssh:devbox:feature-123`)
- **Non-git directories**: Falls back to directory name

### Tmux Plugins
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) - Save/restore sessions
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) - Auto-save every 15 minutes
- [tmux-yank](https://github.com/tmux-plugins/tmux-yank) - Better clipboard integration
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless vim+tmux navigation
