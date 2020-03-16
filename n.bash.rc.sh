#Author: Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
#Bash Initialization File
stty rows 88  && stty columns 134
export PS1='j:\j,u:\u,$: '
bash /sdcard/n.git/n.sh/n.press.sh
date "+%D %T"|fmt -u -w 22 > /sdcard/.ntimelog && date "+%D %T"|fmt -u -w 22 > /sdcard/n.git/TIME.log
alias github='termux-open https://github.com/mwmcgilvery'
alias sxh='sox --help-effect'
alias nsig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias n.s='sox -SV -r44.1k -b16 -c1'
alias n.cop='termux-clipboard-set' && alias n.pas='termux-clipboard-get'
alias py='python3'
alias n.p='play'
alias usr='echo $USER'
alias n.o='termux-open' && alias n.h='cd /sdcard/ && pwd'
alias ls='exa' && alias list='exa -l'
alias n.ls='bash /sdcard/n.ls.sh'
alias n.snd='termux-open --send'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /sdcard/n.git/n.sh/n.git.sync.sh'
alias s.git='git status' && alias p.git='git push'
alias list='exa -bhtx' && alias apps='exa -b /bin'
alias n.b='source ~/.bashrc'
alias n.sh='vim ~/.bashrc ; cp ~/.bashrc /sdcard/n.git/n.bash.rc.sh'
alias d.dir='rm -r'
alias n.rec='termux-microphone-record -l 0 -e -r 44100  -b 16  wav'
alias n.gt='cd /sdcard/n.git && pwd && exa -h' && alias n.git='bash /sdcard/n.git/n.git.sync.sh'
alias rm.cache='rm -r $(bash /sdcard/n.git/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q= ' 
alias p.i='pkg install'
alias d.c='ccrypt -d'
alias c.c='ccrypt -e'
alias end='kill -9'
alias rec.q='termux-microphone-record -q'
alias n.t='vim'
alias ggl="lynx https://google.com/search?q=-"
alias p.git='git push'
alias n.tab='tmux new -c ntm'
alias f.m='nnn'
cd /sdcard/n.git && bash /sdcard/n.git/n.git.sync.sh && cd /sdcard/ &&  pwd && exa -bh .

