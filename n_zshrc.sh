#Matthew McGilvery
#Bash/Zsh Inistialization Script
#nctrnm.com
#!/bin/bash/
#9.28.2021
#Bash/Zsh Initialization File
brew update -y 
cd ~/nctrnmCODE && git pull && git add --all  && git commit -m "u logging into linux desktop terminal"
git push
export  PS1=$PWD:
alias browse='bash /root/nctrnmCODE/sh/openbrowser.sh'
alias phone='bash /root/sftp.sh'
alias pulseaudio_restart='pulseaudio -k && pulseaudio -oD'
alias plsa='pulseaudio --system --start'
alias start='source ~/.bashrc'
alias torstart='brew services start tor'
alias internet='vivaldi'
alias shed='vim ~/.zshrc ; cp ~/.zshrc ~/nctrnmCODE/n_zshrc.sh'
alias dd='rm -rf'
alias rm.cache='rm -r $(zsh ~/nctrnmCODE/n.sh/n.cache.sh)'
alias gthb='lynx https://github.com/mwmcgilvery'
alias google='vivaldi https://www.google.com/search?q= ' 
alias i='brew install'
alias nsftp='sftp -P 6789  192.168.1.149'
alias keyfinder='vivaldi tunebat.com/Analyzer'
alias keyoff='xinput disable 12'
alias u='brew upgrade && npm update -g npm'
alias fq='kill -9 0'
alias d='ccrypt -d'
alias c='ccrypt -e'
alias yx='/bin/play'
alias coned="cd  /data/data/com./files/usr/etc/"
alias ncac='zsh ~/nctrnmCODE/n.sh/n.cache.sh'
alias nt='vim'
alias ggl="lynx https://google.com/search?q=-"
alias pgit='git push'
alias ntab='tmux new -c ntm'
alias fm='nnn'
cd ~ &&  pwd && ls -bh .
reset
