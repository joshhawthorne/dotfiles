export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/$HOME/bin
export RUBYLIB="/usr/local/lib:$RUBYLIB"

[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

PS1='\h \W$(__git_ps1 " (%s)")\$ '

test -r /sw/bin/init.sh && . /sw/bin/init.sh

if [[ -s /Users/josh/.rvm/scripts/rvm ]] ; then source /Users/josh/.rvm/scripts/rvm ; fi

