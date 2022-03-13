# let terminal supports 256 colors
# export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
if [ ! -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  # the installer will not replace an existing .zshrc
  export KEEP_ZSHRC=yes
  sh $(dirname $0)/ohmyzsh-install.sh
fi
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

if [ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]; then
  git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

source $(dirname $0)/antigen.zsh  # require antigen.sh and this file in same directory
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle sudo
# custom plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
# Load the theme.
antigen theme romkatv/powerlevel10k
# copy wakatime configuration file if not exist
if [[ ! -f $HOME/.wakatime.cfg ]]; then
  cp $(dirname $0)/../other/.wakatime.cfg $HOME/
fi
antigen bundle sobolevn/wakatime-zsh-plugin
# Load the theme.
# antigen theme romkatv/powerlevel10k
# Tell Antigen that you're done.
antigen apply

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias exp='export PATH=$(pwd):$PATH'
alias lt='ls --tree'
alias l='ls -a'
alias ll='/bin/ls --color=auto'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# set to vi-mode learn more: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
bindkey -v
# set default editor for softwares. e.g. git
export EDITOR=vim

# add local bin to PATH
export PATH=$HOME/.local/bin/:$PATH
