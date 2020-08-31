#Matthew McGilvery
#Bash Inistialization Script
#nctrnm.com
#!/bin/bash/
#8.30.2020
#Bash Initialization File
apt upgrade -y && apt autoremove -y 
last > ~/nlinux1.log && export set USER='nctrnm'
cd ~/nctrnmCODE && git pull && git add --all  && git commit -m "u logging into linux desktop terminal"
git push
pulseaudio --system --start 
export set PS1='$(pwd): '
alias plsa='pulseaudio --system --start'
alias start='source ~/.bashrc'
alias internet='firefox'
alias shed='vim ~/.bashrc ; cp ~/.bashrc ~/nctrnmCODE/n_bashrc_linux.sh'
alias dd='rm -rf'
alias rm.cache='rm -r $(bash ~/nctrnmCODE/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='chromium-browser https://www.google.com/search?q= ' 
alias i='pkg install'
alias u='pkg upgrade && npm update -g npm'
alias fq='kill -9 0'
alias d='ccrypt -d'
alias c='ccrypt -e'
alias yx='/bin/play'
alias coned="cd  /data/data/com./files/usr/etc/"
alias ncac='bash ~/nctrnmCODE/n.sh/n.cache.sh'
alias nt='vim'
alias ggl="lynx https://google.com/search?q=-"
alias pgit='git push'
alias ntab='tmux new -c ntm'
alias fm='nnn'
cd ~ &&  pwd && ls -bh . && xdm && byobu
reset

