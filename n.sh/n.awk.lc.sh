#Matthew McGilvery
#GPL3 
#nctrnm.com
#[G]awk Lowercase File Print Format
#u: 3.13.20 
#!/bin/bash;
cd /storage/emulated/0 
echo "enter file[/folder] location" 
read l_oc
#print file in all lowercase
awk '{print tolower($0)}' < $l_oc
