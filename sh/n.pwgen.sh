#Author:Matthew McGilvery
#!/bin/bash
echo 'enter basis of random password'
read -s pass; 
echo $pass | md5sum | base64 | cut -c -16
#License: LGPL3
