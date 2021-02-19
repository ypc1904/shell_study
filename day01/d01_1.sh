#!/bin/bash
# read line from /etc/fstab

File=/etc/fstab

# anonym func
{
read line1
read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo 
echo "Second line in $File is:"
echo "$line2"

exit 0
#now, how can you analyse split area between each line?
#tips: awk
