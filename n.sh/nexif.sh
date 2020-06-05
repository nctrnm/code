#Matthew McGilvery
#Exif Copyright Tool
#Note: I recommend you change  the values to whatever you need them to be to best fulfill your metadata task.
#!/bin/bash
cd /sdcard/
echo "enter file"
read a
b='/sdcard/a.txt'
exiftool -overwrite_original -rights="©2020 NctrnmFM, all rights reserved" -CopyrightNotice="©2020 Matthew McGilvery, all rights reserved" -XMP-dc:Creator="Matthew McGilvery" "$a" && exiftool $a > a.txt 
cat a.txt
echo 'metadata from: '$(echo $a) ' is in:' $(echo $b)'.'
