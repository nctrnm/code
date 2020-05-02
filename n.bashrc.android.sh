#Matthew McGilvery
#GPL3
#nctrnm.com
#!/bin/bash/
#1.1.2020
#Bash Initialization File
stty rows $((870/6))  && stty columns $((1175/7))
export PS1='j:\j,u:\u,$:'
alias github='termux-open https://github.com/mwmcgilvery'
alias k.f='termux-open https://tunebat.com/Analyzer'
alias sxh='sox --help-effect'
alias nsig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias n.s='sox -SV -r44.1k -b16 -c1'
alias n.cop='termux-clipboard-set' && alias n.pas='termux-clipboard-get'
alias py='python3'
alias play='mpv'
alias s.p='play -r44100 -b 16 -c1'
alias usr='echo $USER'
alias n.o='termux-open' && alias n.h='cd /sdcard/ && pwd'
alias ls='exa' && alias list='exa -l'
alias n.ls='bash /sdcard/n.ls.sh'
alias n.snd='termux-open --send'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /sdcard/n.git/n.sh/n.git.sync.sh'
alias s.git='git status' && alias p.git='git push'
alias list='exa -bhtx' && alias apps='exa -b /bin'
alias start.n='source ~/.bashrc'
alias n.sh='vim ~/.bashrc ; cp ~/.bashrc /sdcard/n.git/n.bashrc.android.sh'
alias d.dir='rm -r'
alias rec='termux-microphone-record -l 0 -f /sdcard/rec.tmux/n.${RANDOM}.wav  -r 44100  -b 16'
alias n.gt='cd /sdcard/n.git && pwd && exa -h' && alias n.git='bash /sdcard/n.git/n.git.sync.sh'
alias rm.cache='rm -r $(bash /sdcard/n.git/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q= ' 
alias i.p='pkg install'
alias u.p='pkg upgrade && npm update -g npm'
alias d.c='ccrypt -d'
alias c.c='ccrypt -e'
alias end='kill -9'
alias n.cac='bash n.git/n.sh/n.cache.sh'
alias rec.q='termux-microphone-record -q'
alias n.t='vim'
alias ggl="lynx https://google.com/search?q=-"
alias p.git='git push'
alias n.tab='tmux new -c ntm'
alias f.m='nnn'
cd /sdcard/n.git/ && bash /sdcard/n.git/n.git.sync.sh && cd /sdcard/ &&  pwd && exa -bh .

