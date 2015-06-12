#!/bin/bash
(cat ~/.zshrc | grep -Pzo "(?s).+(?=#custom ngouy)" && cat zsh.rc && cat ~/.zshrc | grep -Pzo "(?s)(?<=#end custom ngouy).+") > yy ; cat yy > ~/.zshrc ; rm yy
DATE=$(date +"%b %a %d %H:%M %Y")
for D in `find . -type d`
do
	if [ -e $D/makeRead.sh ] ; then
		cd $D
		./makeRead.sh
		cd - > /dev/null
	fi
done
git add -A
git commit -m "$DATE"

