

#Author: Matthew McGilvery
#License: GPL 3 or Later
#link: nctrnm.com
#!/bin/bash/
#Bash Initialization File 
export PS1='cd: $PWD, $: '
sleep 5
date "+%D %T"|fmt -u -w 22 > /mnt/c/Users/mwmcgilvery/nctrnmCODE/.ntimelog && date "+%D %T"|fmt -u -w 22 > /mnt/c/Users/mwmcgilvery/nctrnmCODE/TIME.log
alias shed='sudo vim ~/.bashrc'
alias sh='sox --help-effect'
alias start='sudo -i bash'
alias nsig='pgrep -u u0_a224' && alias x='kill -9 $(nsig|fmt -u)'
alias ns='sox -SV -r44.1k -b16 -c1'
alias py='python3'
alias np='play'
alias nh='cd /mnt/c/Users/mwmcgilvery/'
alias usr='echo $USER'
alias list='ls -l'
alias nls='bash /mnt/c/Users/mwmcgilvery/nctrnmCODE/n.ls.sh'
alias srch='pkg search'
alias shcp='cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nctrnmCODE/n.sh/n.bash.rc.win10.sh'
alias sgit='git status' && alias p.git='git push'
alias list='ls -bhtx' && alias apps='ls -b /bin'
alias nb='source ~/.bashrc'
alias nsh='vim ~/.bashrc ; cp ~/.bashrc /mnt/c/Users/mwmcgilvery/nctrnmCODE/n.bash.rc.win10.sh'
alias ddir='rm -r'
alias nrec='sox -r 44100 -b 16 ~/${RANDOM}.wav'
alias ngt='cd /mnt/c/Users/mwmcgilvery/nctrnmCODE && pwd && ls -h' 
alias ngit='bash /mnt/c/Users/mwmcgilvery/nctrnmCODE/n.git.sync.sh'
alias gsync='$ngt && $ngit'
alias delcac='rm -r $(bash ~/nmoto/n.sh/n.cache.sh)'
alias github='lynx https://github.com/nctrnm'
alias google='lynx https://encrypted.google.com/search?q= ' 
alias pi='choco install'
alias dc='ccrypt -d'
alias cc='ccrypt -e'
alias end='kill -9'
alias nt='vim'
alias home='cd /mnt/c/Users/wip'
alias ggl="lynx https://google.com/search?q=-"
alias pgit='git push'
alias ntab='tmux new -c ntm'
alias fm='nnn'
cd /mnt/c/Users/mwmcgilvery/nctrnmCODE && bash /mnt/c/Users/mwmcgilvery/nmoto/n.git.sync.sh && $shcp;
