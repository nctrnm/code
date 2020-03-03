#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#Copy or Move(corm)
echo 'copy or move'
read corm
echo 'which file'
read entry
echo 'enter save location'
read addy
if [ $corm = "copy" ]
then 
	cp $entry $addy
	echo "copied $entry to $addy"
else
	mv $entry $addy
	echo "moved $entry to $addy"
fi