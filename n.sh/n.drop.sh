#Author: Matthew McGilvery
#License: LGPL 3.0(or Later)
#!/bin/bash/
#gather ip address ipx
echo 'enter ip address'
read ipx
#gather port # pxn
echo 'enter port number'
read pxn
#run a dropbear ssh server in bckgrnd
dropbear -p $ipx:$pxn &
exit 0;