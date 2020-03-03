#Author: Matthew McGilvery, License: LGPL3
#!/bin/bash
echo 'enter file type' 
read type
for file in *.${type}; do
  sed -i '1i #Author:Matthew McGilvery' "$file" &&
  echo '#License: LGPL3' >> "$file"
done