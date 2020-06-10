#Matthew McGilvery
#CSV Combiner Script
#nctrnm.com
#6.4.2020
#GPL3
#!/bin/bash
cd /mnt/c/Users/mwmcgilvery/Documents/MusBus/nctrnm.googletrends/

outfile="/mnt/c/Users/mwmcgilvery/Documents/MusBus/nctrnm.googletrends/NctrnmGoogleTrends.csv"                       # Fix the output name
i=0                                       # Reset a counter
for f in ./*.csv; do 
 if [ "$f"  != "$outfile" ] ;      # Avoid recursion 
 then 
   if [[ $i -eq 0 ]] ; then 
      head -1  "$f" >   "$outfile" # Copy header if it is the first file
   fi
   tail -n +2  "$f" >>  "$outfile" # Append from the 2nd line each file
   i=$(( $i + 1 ))                            # Increase the counter
 fi
done
