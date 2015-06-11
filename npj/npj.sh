#!/bin/bash
	OLD_IFS=$IFS
	IFS=
	if [ $# != 2 ] ; then
		echo error params
		exit
	fi
	if [ "$2" -eq "$2" ] 2>/dev/null; then
		t=0
	else
		echo error param 2 Nan
		exit
	fi
	if [ "$2" -gt "100" ] || [ "$2" -le "0" ] ; then
		echo error params
		exit
	else
		echo "creating ... "
		mkdir "$1"
		if [ $? -eq 0 ] ; then
			cd $1
			for i in {00..99}
			do
				if [ "$i" -eq $2 ]; then
					break
				fi
				mkdir "ex$i"
			done
			cd ..
		else
			echo error creating dir $1
			exit
		fi
	fi
	HeadH="";
	foo=$1
	echo $foo created with $2 subdirs
	IFS="$OLD_IFS"
#			while [ "$t" != "$2" ] ; do
#				if ["$t" -lt "10"] ; then
#					if ["$t" -eq "0"] ; then 
#						p='00'
#					else
#						P='0${t}'
#					fi
#				else
#					P=$t
#				fi
#				mkdir "ex$P"
#				t=$((t + 1))
#			done
