export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=exfxcxdxBxegedabagacad

alias pushit='git push origin HEAD'
alias pullit='git pull origin HEAD'

alias gc='git commit -am'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gb='git branch'
alias ga='git add'
alias gm='git merge --no-ff'
alias ls='ls --color=auto -h'

mark(){
    b=`pwd`
    echo "Set jump-point to current directory." 
}

go(){
    jumppoint=`pwd`
    cd $b 
    pwd
    b=$jumppoint
    unset jumppoint
}

alias marked='$(echo $b)'


alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias root='root -l'

alias up='cd .. && ls'
alias tree="tree -C"

alias all="ls -alh"
alias reloadbash='source $HOME/.bashrc'
alias editbash='nano $HOME/.bashrc'

alias findme='qstat hep -t | grep --color=auto "lpd7"'

alias hepcheck='qstat hep -t'

export TERM=xterm-color




export PS_BU=$PS1
export PS_ON="\033[1;31mWorking Dir: \[\033[37;1m\][\w]:\[\033[0m\] \n\[\033[1;32m\]   \342\224\224\342\224\200\342\224\200[\[\033[0m\]\[\033[1;31m\]\@\[\033[0m\]\[\033[1;32m\] \u]\$ \[\033[0m\]"

export PS_LUX="\[\e[00;32m\]\u@\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[00;37m\]$ \[\e[0m\]"

prompt-on(){
    export PS1=$PS_ON
}
prompt-off(){
    export PS1=$PS_BU
}
prompt-lux(){
    export PS1=$PS_LUX
}

prompt-lux


alias findme='qstat hep -t | grep --color=auto "lpd7"'







