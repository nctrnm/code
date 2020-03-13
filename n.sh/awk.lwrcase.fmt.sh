#Matthew McGilvery
#GPL3 
#nctrnm.com
#[G]awk Lowercase File Print Format
#u: 3.13.20 
#!/bin/bash;
#print (+modify) file in all lowercase
awk '{print tolower($0)}' < file
