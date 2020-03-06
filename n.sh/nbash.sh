#Author: Matthew McGilvery
#License: GPL 3 or Later
#!/bin/bash/
stty rows 48 columns 80
bash /sdcard/n.git/n.sh/npress.sh
date "+%D %T"|fmt -u -w 22 > /sdcard/.ntimelog && date "+%D %T"|fmt -u -w 22 > /sdcard/n.git/TIME.log
alias github='termux-open https://github.com/mwmcgilvery'
alias sxh='sox --help-effect'
alias x='exit'
alias nsig='pgrep -u u0_a224'
alias ncp='termux-clipboard-set'
alias npaste='termux-clipboard-get'
alias py='python3'
alias sx='sox -S -V -c1'
alias p='play'
alias h='cd /sdcard/ && pwd'
alias usr='echo $(whoami)'
alias n.o='termux-open'
alias n.h='/sdcard/'
alias ls='exa' && alias list='exa -l'
alias snd='termux-open --send'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /sdcard/n.git/n.sh/nbash.sh'
alias gits='git status'
alias list='dir -bhtx'
alias apps='list -b /bin'
alias hm='cd /sdcard/ && pwd'
alias bashed='vim ~/.bashrc ; cp ~/.bashrc /sdcard/nbash.sh'
alias ddir='rm -r '
alias ngit='bash /sdcard/n.git/n.sh/ngt.sh'
alias rec='termux-microphone-record -l 0'
alias ngt='cd /sdcard/n.git && pwd'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q=' 
alias pkgi='pkg install'
alias dcc='ccrypt -d'
alias cc='ccrypt -e'
alias end='kill -9'
alias nt='vim'
alias ggl="lynx https://google.com/search?q=-"
alias fmh='nnn /sdcard/n.git'
alias gitp='git push'
alias pips='${h}; pip3 search'
alias _tab='tmux new -c ntm'
alias go='cd '
alias fm='nnn'
echo "sync git repo?"
read ans
if [[ "$ans" = "y" ]]||[[ "$ans" = "Y" ]]
then
	cd /sdcard/n.git && bash /sdcard/n.git/n.sh/ngt.sh; $h && pwd
else
	$h && pwd
fi
