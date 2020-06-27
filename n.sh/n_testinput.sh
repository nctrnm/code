Matthew McGilvery
6.25.20
User Input Script
nctrnm.com
GPL3
#!/bin/bash
while true;  do
	read -p "continue (c) or stop (s)" cs
	case $cs in
		[cC]*) vim /sdcard/q.sh && bash /sdcard/q.sh;;
		[sS]*) break && exit;;
		*) echo "?";;
	esac
done
