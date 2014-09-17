# DOT ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export DOT=$HOME/dotfiles
if [ -d $DOT ]; then
    export PATH=$PATH:$DOT/bin
    source $DOT/aliases
else
    echo "Configure DOT in .zshrc to point to your dotfiles repository"
    read
    exit
fi

# ZSH ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_CORRECTION="true"
plugins=(git tmuxinator pip bower)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
# VirtualEnv +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export WORKON_HOME=~/Envs

if [ ! -d $WORKON_HOME ]; then
    mkdir -p $WORKON_HOME
fi

if [ -f ~/.local/bin/virtualenvwrapper.sh ]; then
    source ~/.local/bin/virtualenvwrapper.sh
fi

# PATHS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export PATH=$PATH:/usr/lib/lightdm/lightdm
export PATH=$PATH:/usr/local/sbin:/usr/local/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/bin
export PATH=$PATH:~/.npm/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.gem/ruby/1.9.1/bin

# NPM ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export NODE_PATH=$NODE_PATH:~/.npm/lib/node_modules

# TERM +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#export TERM=xterm-256color
stty -ixon -ixoff
stty stop undef
