
# MacPorts Installer addition on 2009-10-14_at_14:09:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/libexec/git-core:/opt/local/bin:/opt/local/sbin:~/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

PS1='\h \W$(__git_ps1 " (%s)")\$ '

test -r /sw/bin/init.sh && . /sw/bin/init.sh
