# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="tonotdo"
export ZSH_THEME="gallifrey"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

plugins=(git osx ruby brew cap gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ANT_HOME=/usr/local/ant
export PATH=/usr/local/bin:/usr/local/sbin:/sw/bin:/sw/sbin:/Users/josh/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin://Users/josh/bin:/usr/X11R6/bin:${ANT_HOME}/bin:/usr/games
#export PATH=/usr/local/bin:/usr/local/sbin:/sw/bin:/sw/sbin:/opt/local/libexec/git-core:/opt/local/bin:/opt/local/sbin:/Users/josh/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin://Users/josh/bin:/usr/X11R6/bin:${ANT_HOME}/bin:/usr/games


function fp { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

alias cfp='fp | pbcopy'

function take {
  mkdir -p $1 && cd $1
}

alias grep="grep --color=auto"
alias ack="ack --color"

alias ..="cd .."
alias ...="cd .. ; cd .."

alias ls="ls -G" # list
alias la="ls -Ga" # list all, includes dot files
alias ll="ls -Gl" # long list, excludes dot files
alias lla="ls -Gla" # long list all, includes dot files

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="sudo osascript -e 'set volume 10'"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook

alias redo='sudo \!-1'

alias r="rails"

alias vim="mvim"
alias vi="mvim"

function gadd {
    ghost add www.$1
    ghost add $1
}

function gdel {
    ghost delete_matching $1
}

alias glist="ghost list"

alias log="tail -f log/development.log"

function clone {
    git clone ssh://git@clevyrapps.com:40000/home/git/$1.git
}

alias ra="sudo apachectl restart"

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi