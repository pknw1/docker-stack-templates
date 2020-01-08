#!/bin/bash

if find /mnt/google-drive/folders -type d >  /dev/null; then echo "mount found"; else echo "no mount" && exit; fi 
exit

find /mnt/google-drive/folders -type d -name gdrive | sed 's/\/mnt\/google-drive\/folders//g' | while read -r d;
do
	if [ ! -d  $d ]; then 
		mkdir -p $d
	fi

	mount -B /mnt/google-drive/folders$d $d
done

