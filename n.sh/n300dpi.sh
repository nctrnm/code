#Matthew McGilvery
#File Resize (300 dpi && 1500 pixel square crop
#nctrnm.com
#GPL3
#!/bin/bash
echo 'enter file' && read a 
echo 'enter saved file name' && read b 
convert -units PixelsPerInch $a -resample 300 -resize 1500x1500 $b
