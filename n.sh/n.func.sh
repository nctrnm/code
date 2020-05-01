#Matthew McGilvery
#LGPL3orlater
#!/bin/bash
#function example
#read function variable cont
echo 'enter function command'
read cont
cont2=$cont
#function that runs user entered command variable cont
fun() {
$cont2
}
#output results of user entered command, fun
echo $(fun)
