#!/bin/bash

Dir="$1.dir"
Archive="$2"

mkdir -p $Dir

i=1
for a in "$@"; do
	if [ $i -gt 2 ]
	then 
		find $HOME -name "*.$a" -exec cp --parents {} ./$Dir &>\dev\null \;
	fi
	i=$(($i + 1))
done

tar -cf $2.tar ./$Dir

echo "done"



