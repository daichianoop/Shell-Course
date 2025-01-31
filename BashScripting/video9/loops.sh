#!/bin/bash
#for n in {1..10}
#do
#	echo $n
#	sleep 1
#done
#echo "The is outside of the LOOP"

# usefull for loop script
# there are txt , sh and .log files but only the files ending with .log will be zipped
for file in /home/kiit/BashScripting/video9/logfiles/*.log
do
	tar -czvf $file.tar.gz $file
done
