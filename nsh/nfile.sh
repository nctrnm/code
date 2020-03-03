#Author:Matthew McGilvery
#!/bin/bash
for file in $FILE 
if [[ -ne "$file" ]]       # Check if file exists.
then
echo "$file does not exist."
fi          #License: LGPL3
