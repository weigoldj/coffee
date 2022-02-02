#!/bin/bash
###############################################################################
# > mkdir -p ~/Documents/sandbox
# > cd ~/Documents/sandbox
# > git pull https://github.com/weigoldj/coffee.git
#
# add the following line to your .bashrc 
# alias devenv='cd ~/Documents/sandbox/coffee; source devenv.sh'
###############################################################################
echo "grinding beans"

SANDBOX=$PWD/..
echo "$SANDBOX"

# Use the first on big netowrks
export PS1='\e[0;35m[\u@\H:\j:\! ~> \e[m'

# functions
# example hkill <namespace>
fuction hkill() {
  helm uninstall $(helm list -aq -n $1) -n $1
} 

alias apps="cd $SANDBOX"
alias ..='cd ..'
alias ...='cd ../..'
alias ll="ls -l"
alias lla="ls -al"
alias mounts="lsblk"

# git
alias gl='git log'
alias glo='git log --oneline --pretty=format:"%h%x09%an%x09%ad%x09%s"'
alias gp='git pull'
alias gpo='git push origin'
alias gc='git config --global --add color.ui true'

# docker alias
alias images='docker images'

# kubernetes 
alias kwatch='watch kubectl get pods --all-namespaces'

# gradle 
alias gw='gradlew'

# local paths
export PATH=$DEVENV/scripts:.:$PATH

# set go path
export PATH=$HOME/go/bin/:$PATH

