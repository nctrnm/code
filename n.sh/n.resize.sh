#Author:Matthew McGilvery
#!/bin/bash
echo 'enter file'
read picn
convert -resize '3000x3000^' ${picn}x.jpg ${picn}.jpg#License: LGPL3
