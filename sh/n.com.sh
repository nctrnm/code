#Matthew McGilvery
#2.15.2020
#GPL3 
#nctrnm.com 
#Copy and Move Utility (n.com)
echo 'copy or move'
read c_m
echo 'which file'
read f_ile
echo 'enter save location'
read l_oc
if [ ${c_m} = "copy" ]
then 
	cp ${f_ile} ${l_oc} 
	echo "copied ${f_ile} to ${l_oc}"
else
	mv ${f_ile} ${l_oc} 
	echo "moved ${f_ile} to ${l_oc}"
fi
