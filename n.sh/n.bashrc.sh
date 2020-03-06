#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#!/bin/bash/
bash /sdcard/ngt/nsh/npress.sh
echo "logging global aliases" 
alias nsig='pgrep -u u0_a224'
alias username='echo $(whoami)'
alias pgen='pwgen -1 -c -C -n -y 8 5'
alias o='termux-open'
alias x="kill -9 $((echo"$$"))"
alias send='termux-open --send'
alias search='pkg search'
alias shcp='cp ~/.bashrc /sdcard/nbashrc.sh'
alias bincp='cd /data/data/com.termux/files/usr/bin/ && cp -r * /sdcard/ngt/nbin'
alias gits='git status'
alias list='dir -l -t -H'
alias apps='pkg list-installed'
alias hm='cd /sdcard/ && pwd'
alias xtmux='tmux kill-session -t ntrm && exit'
alias bashed='micro ~/.bashrc|cp ~/.bashrc /sdcard/nbashrc.sh'
alias ddir='rmdir --ignore-fail-on-non-empty'
alias ngit='bash /sdcard/ngt/nsh/n_git.sh'
alias ngt='cd /sdcard/ngt && pwd'
alias gthb='elinks https://github.com/mwmcgilvery'
alias google='elinks https://www.google.com/search?q=' 
alias sh101='man sh'
alias bash101='man bash'
alias pkgi='pkg install'
alias ndcc='ccrypt -d'
alias ncc='ccrypt -e'
alias end='kill -9'
alias rt='cd . && pwd'
alias note='micro'
alias nt='micro'
alias google='elinks https://google.com/search'
alias fmh='nnn /sdcard/ngt'
alias hm='mc /sdcard/ngt'
alias gitp='git push nmbl'
alias tab='tmux new -c ntm'
alias go='cd '
alias fm='nnn'
#trignometry
sin ()
{
    echo "scale=5;s($1*0.017453293)" | bc -l
}

cos ()
{
    echo "scale=5;c($1*0.017453293)" | bc -l
}

tan ()
{
    echo "scale=5;s($1*0.017453293)/c($1*0.017453293)" | bc -l
}

csc ()
{
    echo "scale=5;1/s($1*0.017453293)" | bc -l
}

sec ()
{
    echo "scale=5;1/c($1*0.017453293)" | bc -l
}

ctn ()
{
    echo "scale=5;c($1*0.017453293)/s($1*0.017453293)" | bc -l
}

asin ()
{
    if (( $(echo "$1 == 1" | bc -l) ));then
       echo "90"   
    elif (( $(echo "$1 < 1" | bc -l) ));then
       echo "scale=3;a(sqrt((1/(1-($1^2)))-1))/0.017453293" | bc -l
    elif (( $(echo "$1 > 1" | bc -l) ));then
       echo "error"
    fi
}

acos ()
{
    if (( $(echo "$1 == 0" | bc -l) ));then
       echo "90"
    elif (( $(echo "$1 <= 1" | bc -l) ));then
       echo "scale=3;a(sqrt((1/($1^2))-1))/0.017453293" | bc -l
    elif (( $(echo "$1 > 1" | bc -l) ));then
       echo "error"
    fi
}

atan ()
{
    echo "scale=3;a($1)/0.017453293" | bc -l
}

acot ()
{
    echo "scale=5;a(1/$1)/0.017453293" | bc -l
}

asec ()
{
    echo "scale=5;a(sqrt(($1^2)-1))/0.017453293" | bc -l
}

acsc ()
{
    echo "scale=5;a(1/(sqrt($1^2)-1))/0.017453293" | bc -l
}
echo 'Saving Initialization File Updates' 
$(shcp)
echo "tidying apps"
pkg upgrade; npm -g update
echo "logging back into home directory"
cd /sdcard/
echo "Printing Global Aliases"
alias -p > /sdcard/nalias.txt
pwd
echo 'ready' 