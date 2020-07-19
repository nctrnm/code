#Author:Matthew McGilvery
shopt -s nullglob
for i in *\'* ; do mv -v "$i" "${i/\'/}" ; done#License: LGPL3
