#Matthew McGilvery
#Browser Opener without Dynamic Output
#12.15.2020
#nctrnm.com
#!/bin/bash
echo "enter desired browser"
read browserx
$browserx --no-sandbox &> /dev/null &


