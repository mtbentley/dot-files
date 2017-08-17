PATH=/home/matthew/bin:$PATH

[[ `tty | sed -e "s:/dev/::"` = "tty1" ]] && (startx && logout || logout)

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export PATH=/home/matthew/.cabal/bin:$PATH
export PATH=/usr/local/bin:$PATH

if [[ $(uname) != "Darwin" ]]; then
    export SSH_AGENT_PID=$(pgrep ssh-agent)
    export SSH_AUTH_SOCK=/run/user/1000/ssh-agent
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
#ZSH_THEME="gentoo"

#if [ -f "${HOME}/.gpg-agent-info" ]; then
#  . "${HOME}/.gpg-agent-info"
#  export GPG_AGENT_INFO
#  export SSH_AUTH_SOCK
#fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux docker cargo git virtualenv tmux zsh-syntax-highlighting bzr)

export EDITOR=vim

source $ZSH/oh-my-zsh.sh

export INPUTRC=/etc/inputrc

# Customize to your needs...
alias pacman="sudo pacman"
alias ll='ls -la --color=yes'
alias lh='ls -lah'
alias grep="grep --color"
alias htop='htop -d10'
alias nano='nano -w'
alias ls='ls --color=auto'
alias dir='ls --color=yes'
alias ex='exit'
alias yaoup='yaourt -Syua'
alias iotop='sudo iotop'
alias cls="clear"
alias makepkg="makepkg --log"
alias wanip="curl -s icanhazip.mtb.wtf"
alias wanip4="curl -s -4 icanhazip.mtb.wtf"
alias wanip6="curl -s -6 icanhazip.mtb.wtf"
alias resource="source ~/.zshrc"
alias weechat="python2 /home/matthew/bin/pyrnotify.py 4321 0 & ssh -R 4321:localhost:4321 weechat@mail.mtbentley.us -p 2222 -t 'tmux a || tmux'"
alias wee='weechat'
alias reswap="sudo swapoff /dev/sdb1 && sudo swapon /dev/sdb1"
alias um="udiskie-umount"
alias m="udiskie-mount"
alias pp="python -mjson.tool"
alias x='exit'
alias y='yaourt'
alias yu='yaoup'
alias re='reset'
alias s='sudo systemctl'
alias n='nano'
alias j='journalctl'
alias t='torrent'
alias p='prettyping'
alias sr='sudo systemctl restart'
alias sp='sudo systemctl stop'
alias st='sudo systemctl start'
alias jf='j -f'
alias wa='wanip'
alias doc='docker'
alias et="emacsclient -t"
alias pt="sudo powertop"
alias v="vim"
alias srw="sr netctl-auto@wlp4s0.service; jf"
alias vm="virt-manager"
alias snowman="echo ☃"
alias ox='echo ΘΧ'
alias pipup="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"

export GOPATH=$HOME/projects/go

function c { cd $1; ls }

function torrent { ssh -l $1 -t bugs.case.edu 'tmux a'; }
function storrent { ssh -l $1 -t bugs.case.edu 'tmux'; }
function start { scp $1 ${2}@bugs.case.edu:~/.torrent/ && rm $1; }
function roulette { RANDOM=$(od -vAn -N4 -tu4 < /dev/urandom); [ $[ $RANDOM % $1 ] -eq 0 ]; }

function tssh { while ! ssh $1; do sleep 1; done }

#Completion stuff
compdef _files start
#source /usr/bin/tdm

#envoy -t ssh-agent
#source <(envoy -p)

#source /home/matthew/.nix-profile/etc/profile.d/nix.sh
#export NIX_REMOTE=daemon

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/home/matthew/.cargo/bin:$PATH


PATH="/home/matthew/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/matthew/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/matthew/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/matthew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/matthew/perl5"; export PERL_MM_OPT;

source ~/.profile
