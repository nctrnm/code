#Matthew McGilvery
#3.13.2020
#GPL3
#nctrnm.com
#Finder (using for loop)
#!/bin/bash
cd /storage/emulated/0;
echo "enter desired search directory" && sleep .44;
echo "format: /foldername[/...]"
read l_oc
echo "enter file type" && sleep .34;
echo "format: *[.*].filetype"
read t_yp
for _f in /${l_oc}/${t_yp};
do ls ${_f}|fmt -u|sort -du;
done;
