#sed = Stream EDitor
#-i = in-place (i.e. save back to the original file)
#The command string:
#s = the substitute command
#original = a regular expression describing the word to replace (or just the word itself)
#new = the text to replace it with
#g = global (i.e. replace all and not just the first occurrence)
#file.txt = the file name

sed -i 's/original/new/g' file.txt