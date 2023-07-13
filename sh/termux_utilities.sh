#!/bin/bash
# Title: Termux Utility Script: Automation, Aliases, and Productivity Tools
# Author: Your Name
# Date: $(date +%m/%d/%Y)

# Update packages, clear screen, and remove unused packages
pkg upgrade -y >/dev/null 2>&1 && npm update -g >/dev/null 2>&1 && apt autoremove -y >/dev/null 2>&1
clear

# Change to the home directory and print the current working directory
cd "$HOME" && pwd

# Create aliases
alias googler="termux-open http://google.com"
alias open='termux-open'
alias clip="termux-clipboard-set"
alias xpaste="termux-clipboard-get"
alias ask='python3 ~/ask2.py'
alias files='manager'
alias viberate='termux-open http://viberate.com/login'
alias say='termux-tts-speak'
alias go_ubuntu='proot-distro login ubuntu'
alias bashed='nvim ~/.bashrc && exec bash'
alias nt='nvim'
alias py=python3
alias pip=pip3
alias chat='termux-open http://chat.openai.com'
alias bard='termux-open http://bard.google.com'
alias wiki='termux-open https://en.wikipedia.org'
alias yt='termux-open https://www.youtube.com'
alias maps='termux-open https://maps.google.com'
alias calc='wcalc'
alias weather='curl wttr.in'
alias speedtest='speedtest-cli'
alias todo='nvim ~/todo.txt'
alias remind='nvim ~/reminders.txt'
alias gcal='gcal'
alias manpages='man'
alias c='gcc'
alias code='nvim'
alias sysinfo='neofetch'
alias diskusage='df -h'
alias networkinfo='ifconfig'
alias processlist='ps aux'
alias gcal='gcal'
alias wordcount='wc'
alias compress='tar -czvf'
alias extract='tar -xzvf'
alias search='grep -r'
alias hostname='hostname'
alias reboot='reboot'
alias python=python3

# Display current uptime
gcal
uptime

# Set up environment variables for Perl and Basher
export PATH="$HOME/perl5/bin:$PATH"
export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"
export PERL_LOCAL_LIB_ROOT="$HOME/perl5:$PERL_LOCAL_LIB_ROOT"
export PERL_MB_OPT="--install_base \"$HOME/perl5\""
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
export PATH="$HOME/.basher/bin:$PATH"

# Initialize Basher if not already initialized
if [ -z "$BASHER_VERSION" ]; then
  eval "$(basher init - bash)"
fi

# Display a clock and calendar
tty-clock -Sc
gcal

# Alias Reference (man page)
man() {
  case $1 in
    googler)
      echo "googler - Open http://google.com in a browser."
      ;;
    open)
      echo "open - Open a file or URL using the default application."
      ;;
    clip)
      echo "clip - Set the system clipboard content."
      ;;
    xpaste)
      echo "xpaste - Retrieve the content of the system clipboard."
      ;;
    ask)
      echo "ask - Run the ask2.py Python script located in the home directory."
      ;;
    files)
      echo "files - Custom command or script named 'manager'."
      ;;
    viberate)
      echo "viberate - Open http://viberate.com/login in a browser."
      ;;
    say)
      echo "say - Use text-to-speech to speak the provided text."
      ;;
    go_ubuntu)
      echo "go_ubuntu - Log into the Ubuntu distribution using proot-distro."
      ;;
    bashed)
      echo "bashed - Open the .bashrc file for editing using nvim and restart the Bash shell."
      ;;
    nt)
      echo "nt - Open the nvim text editor."
      ;;
    py)
      echo "py - Set the 'py' command to 'python3'."
      ;;
    pip)
      echo "pip - Set the 'pip' command to 'pip3'."
      ;;
    chat)
      echo "chat - Open http://chat.openai.com in a browser."
      ;;
    bard)
      echo "bard - Open http://bard.google.com in a browser."
      ;;
    wiki)
      echo "wiki - Open the English Wikipedia website (https://en.wikipedia.org) in a browser."
      ;;
    yt)
      echo "yt - Open YouTube (https://www.youtube.com) in a browser."
      ;;
    maps)
      echo "maps - Open Google Maps (https://maps.google.com) in a browser."
      ;;
    calc)
      echo "calc - Launch the wcalc command-line calculator."
      ;;
    weather)
      echo "weather - Retrieve and display the current weather using the curl and wttr.in."
      ;;
    speedtest)
      echo "speedtest - Run a network speed test using the speedtest-cli command."
      ;;
    todo)
      echo "todo - Open the todo.txt file for managing a to-do list using the nvim text editor."
      ;;
    remind)
      echo "remind - Open the reminders.txt file for managing reminders using the nvim text editor."
      ;;
    gcal)
      echo "gcal - Display a calendar using the gcal command."
      ;;
    manpages)
      echo "manpages - Display manual pages using the man command."
      ;;
    c)
      echo "c - Shortcut for running the gcc compiler."
      ;;
    code)
      echo "code - Open files for editing using nvim."
      ;;
    sysinfo)
      echo "sysinfo - Display system information using the neofetch command."
      ;;
    diskusage)
      echo "diskusage - Show disk usage using the df command with the -h option."
      ;;
    networkinfo)
      echo "networkinfo - Display network information using the ifconfig command."
      ;;
    processlist)
      echo "processlist - List running processes using the ps aux command."
      ;;
    gcal)
      echo "gcal - Display a calendar using the gcal command."
      ;;
    wordcount)
      echo "wordcount - Count lines, words, and characters in a file using the wc command."
      ;;
    compress)
      echo "compress - Create a compressed tar archive using the tar command with the -czvf options."
      ;;
    extract)
      echo "extract - Extract files from a tar archive using the tar command with the -xzvf options."
      ;;
    search)
      echo "search - Recursively search for a pattern in files using the grep command."
      ;;
    hostname)
      echo "hostname - Display the hostname of the system."
      ;;
    reboot)
      echo "reboot - Restart the system."
      ;;
    python)
      echo "python - Set the 'python' command to 'python3'."
      ;;
    *)
      echo "No manual entry found for '$1'."
      ;;
  esac
}

# Usage: man <command>
