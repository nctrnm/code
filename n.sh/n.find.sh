#Matthew McGilvery
#3.13.2020
#GPL3
#nctrnm.com
#Finder (using for loop)
#!/bin/bash
cd /storage/emulated/0;
echo "enter desired search directory" && sleep .34;
echo "format: /foldername[/...]"
read l_oc
echo "enter file type" && sleep .34;
echo "format: [*.]file[.[type[s]]"
read f_il
for _f in /${l_oc}/${f_il};
do ls ${_f}|fmt -u|sort -du;
done;
