#!/bin/bash
cat zshrc > zsh.rc
DATE=$(date +"%b %a %d %H:%M %Y")
for D in `find . -type d`
do
	if [ -e $D/makeRead.sh ] ; then
		cd $D
		./makeRead.sh
		cd - > /dev/null
	fi
	git add -A
	git commit -m "$DATE"
done

