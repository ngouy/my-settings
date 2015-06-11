#!/bin/bash
cat zshrc > zsh.rc
for D in `find . -type d`
do
	if [ -e $D/makeRead.sh ] ; then
		cd $D
		./makeRead.sh
		cd - > /dev/null
	fi
done

