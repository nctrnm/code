#Matthew McGilvery
#Bash Inistialization Script
#nctrnm.com
#!/bin/bash/
#5.28.2020
#Bash Initialization File
stty rows $((14900/2))  && stty columns $((7100/4))
export set USER='nctrnm'
export set PS1='cd: $(pwd): '
alias github='termux-open https://github.com/nctrnm'
alias kf='termux-open https://tunebat.com/Analyzer'
alias sxh='sox --help-effect'
alias nsig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias sx='sox -SV -r44.1k -b16 -c1'
alias copi='termux-clipboard-set' && alias pst='termux-clipboard-get'
alias py='python3'
alias pl='play'
alias freespc='cd /sdcard/ && rm -rvf $(du -xt 500000|grep "cache"|fmt -u)'
alias googlr='tmux lynx encrypted.google.com/'
alias p='mpv'
alias google='lynx https://google.com/search?q='
alias cop='termux-clipboard-set'
alias usr='echo $USER'
alias o='termux-open' && alias n.h='cd /sdcard/ && pwd'
alias ls='exa' && alias list='exa -l'
alias snd='termux-open --send'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /sdcard/n.git/n.sh/n.git.sync.sh'
alias sgit='git status' && alias p.git='git push'
alias lsx='exa -bhtx' && alias apps='exa -bad /bin'
alias start='source ~/.bashrc'
alias shed='vim ~/.bashrc ; cp ~/.bashrc /sdcard/n.git/n.bashrc.android.sh'
alias dd='rm -rf'
alias rec='termux-microphone-record -l 0 -f /sdcard/rec.tmux/n.${RANDOM}.wav  -r 44100  -b 16'
alias ngt='cd /sdcard/n.git && pwd && exa -h'
alias ngit='git pull && git add --all && git commit && git push && git status'
alias rm.cache='rm -r $(bash /sdcard/n.git/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='lynx https://www.google.com/search?q= ' 
alias i='pkg install'
alias u='pkg upgrade && npm update -g npm'
alias d='ccrypt -d'
alias c='ccrypt -e'
alias yx='/bin/play'
alias coned="cd  /data/data/com.termux/files/usr/etc/"
alias ncac='bash /sdcard/n.git/n.sh/n.cache.sh'
alias recq='termux-microphone-record -q'
alias nt='vim'
alias ggl="lynx https://google.com/search?q=-"
alias pgit='git push'
alias ntab='tmux new -c ntm'
alias fm='nnn'
cd /sdcard/ &&  pwd && exa -bh .
