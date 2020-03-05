#Author:Matthew McGilvery
#!/bin/bash

# $RANDOM returns a different random integer at each invocation.
# Nominal range: 0 - 32767 (signed 16-bit integer).

max=8
count=1

echo
echo "$max random nums:"
while [ $count -le $max  ]      # Generate $max random integers.
do
  numb=$RANDOM
  echo $numb
  let "count += 1"  # Increment count.
done
exit 0#License: LGPL3
