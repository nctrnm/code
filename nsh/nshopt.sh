shopt -s nullglob
for i in *\'* ; do mv -v "$i" "${i/\'/}" ; done