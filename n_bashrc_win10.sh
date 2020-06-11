

#Author: Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
#Bash Initialization File 
export PS1='cd: $PWD, $: '
sleep 5
date "+%D %T"|fmt -u -w 22 > /mnt/c/Users/mwmcgilvery/nmoto/.ntimelog && date "+%D %T"|fmt -u -w 22 > /mnt/c/Users/mwmcgilvery/nmoto/TIME.log
alias shed='sudo vim ~/.bashrc && sudo start'
alias s.h='sox --help-effect'
alias start='sudo -i bash'
alias n.sig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias n.s='sox -SV -r44.1k -b16 -c1'
alias p.y='python3'
alias n.p='play'
alias n.h='cd /mnt/c/Users/mwmcgilvery/'
alias usr='echo $USER'
alias list='ls -l'
alias n.ls='bash /mnt/c/Users/mwmcgilvery/nmoto/n.ls.sh'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nmoto/n.sh/n.bash.rc.win10.sh'
alias s.git='git status' && alias p.git='git push'
alias list='ls -bhtx' && alias apps='ls -b /bin'
alias n.b='source ~/.bashrc'
alias n.sh='vim ~/.bashrc ; cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nmoto/n.bash.rc.win10.sh'
alias d.dir='rm -r'
alias n.rec='sox -r 44100 -b 16 ~/${RANDOM}.wav'
alias n.gt='cd ~/nmoto && pwd && ls -h' && alias n.git='bash ~/nmoto/n.git.sync.sh'
alias rm.cache='rm -r $(bash ~/nmoto/n.sh/n.cache.sh)'
alias github='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q= ' 
alias p.i='choco install'
alias d.c='ccrypt -d'
alias c.c='ccrypt -e'
alias end='kill -9'
alias n.t='vim'
alias home='cd /mnt/c/Users/mwmcgilvery'
alias ggl="lynx https://google.com/search?q=-"
alias p.git='git push'
alias n.tab='tmux new -c ntm'
alias f.m='nnn'
cd /mnt/c/Users/mwmcgilvery/nmoto && bash /mnt/c/Users/mwmcgilvery/nmoto/n.git.sync.sh && $shcp;
