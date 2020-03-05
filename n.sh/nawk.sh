#Author:Matthew McGilvery
#!/bin/bash;
#print (+modify) file in all lowercase
awk '{print tolower($0)}' < file;#License: LGPL3
