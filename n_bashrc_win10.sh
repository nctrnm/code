

#Author: Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
cd /mnt/c/wip/
cd /mnt/c/Users/wip/
sudo ls /bin > /dev/null/2
export PS1='j:\j,$PWD: '
alias home='cd /mnt/c/Users/mwmcgilvery'
alias sx='sox -r 44100 -b 320000 -c 1'
alias h='cd /mnt/c/Users/mwmcgilvery/ && pwd && ls -a' 
alias sh='sox --help-effect'
alias nsig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias ns='sox -SV -r44.1k -b16 -c1'
alias py='python3'
alias np='play'
alias nh='cd mnt/c/Users/mwmcgilvery/'
alias usr='echo $USER'
alias list='ls -l'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nmoto/n.sh/n.bash.rc.win10.sh'
alias s.git='git status' && alias p.git='git push'
alias list='ls -bhtx' && alias apps='ls -b /bin'
alias n.b='source ~/.bashrc'
alias n.sh='vim ~/.bashrc ; cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nmoto/n.sh/n.bash.rc.win10.sh'
alias d.dir='rm -r'
alias n.rec='sox -r 44100 -b 16 ~/${RANDOM}.wav'
alias n.gt='cd /mnt/c/Users/mwmcgilvery/nmoto && pwd && ls -h' && alias n.git='bash /mnt/c/Users/mwmcgilvery/nmoto/*/n.git.sync.sh'
alias rm.cache='rm -r $(bash /mnt/c/Users/mwmcgilvery/nmoto/n.sh/n.cache.sh)'
alias github='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q= ' 
alias p.i='choco install'
alias h='cd /mnt/c/Users/mwmcgilvery'
alias d.c='ccrypt -d'
alias c.c='ccrypt -e'
alias end='kill -9'
alias shed='sudo vim ~/.bashrc'
alias start='sudo bash'
alias sx='sox -r 44100 -b 320000 -c 1'
alias pl='play -c1 -r44100'
alias n.t='vim'
alias ggl="lynx https://google.com/search?q=-"
alias p.git='git push'
alias n.tab='tmux new -c ntm'
alias f.m='nnn'
alias n.h='cd /mnt/c/Users/mwmcgilvery && pwd && ls -a'
cd /mnt/c/wip  && sudo -V
pwd
