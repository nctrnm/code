#Matthew McGilvery
#Bash Inistialization Script
#nctrnm.com
#!/bin/bash/
#5.28.2020
#Bash Initialization File
last > ~/nlinux1.log && export set USER='nctrnm'
cd ~/nctrnmCODE && git pull && git add --all  && git commit -m "u logging into linux desktop terminal"
git push
pulseaudio --system --start 
export set PS1='$(pwd): '
alias plsa='pulseaudio --system --start'
alias start='source ~/.bashrc'
alias shed='vim ~/.bashrc ; cp ~/.bashrc ~/nctrnmCODE/n_bashrc_linux.sh'
alias dd='rm -rf'
alias rec='termux-microphone-record -l 0 -f ~rec.tmux/n.${RANDOM}.wav  -r 44100  -b 16'
alias rm.cache='rm -r $(bash ~/nctrnmCODE/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='chromium-browser https://www.google.com/search?q= ' 
alias i='pkg install'
alias u='pkg upgrade && npm update -g npm'
alias d='ccrypt -d'
alias c='ccrypt -e'
alias yx='/bin/play'
alias coned="cd  /data/data/com.termux/files/usr/etc/"
alias ncac='bash ~/nctrnmCODE/n.sh/n.cache.sh'
alias nt='vim'
alias ggl="lynx https://google.com/search?q=-"
alias pgit='git push'
alias ntab='tmux new -c ntm'
alias fm='nnn'
cd ~ &&  pwd && ls -bh . && xdm && byobu