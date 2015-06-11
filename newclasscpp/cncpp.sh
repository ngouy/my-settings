	#!/bin/bash
	OLD_IFS="$IFS"
	IFS=
	HeadH="";
	foo=$1
	CNAME=`echo ${foo:0:1} | tr  '[a-z]' '[A-Z]'`${foo:1}
	firstline="$CNAME.class.hpp for ${PWD##*/}"
	NAMF="$CNAME.class.hpp"
	NAMH=$NAMF
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH// ************************************************************************** //\n"
	HeadH="$HeadH//                                                                            //\n"
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	DAT=$(date +"%b %a %d %H:%M %Y")
	firstline="created on $DAT"
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	firstline="Made by : $USER  <$MAIL>"
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	HeadH="$HeadH//                                                                            //\n"
	HeadH="$HeadH// ************************************************************************** //\n"
	HeadH="$HeadH\n"
	CNAME=$(echo $1 | awk '{ print toupper($0)}')
	HeadH="$HeadH#ifndef ${CNAME}_CLASS_H\n"
	HeadH="$HeadH# define ${CNAME}_CLASS_H\n"
	foo=$1
	CNAME=`echo ${foo:0:1} | tr  '[a-z]' '[A-Z]'`${foo:1}
	HeadH="$HeadH\n\n\nclass $CNAME {\n\npublic:\n\n\t$CNAME( void );\n\t~$CNAME( void );\n\n};\n\n\n"
	HeadH="$HeadH#endif // ******************************************************************* //"
	echo -e $HeadH >> $NAMF
	echo $NAMF created
	HeadH="";
	foo=$1
	CNAME=`echo ${foo:0:1} | tr  '[a-z]' '[A-Z]'`${foo:1}
	firstline="$CNAME.class.cpp for ${PWD##*/}"
	NAMF="$CNAME.class.cpp"
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH// ************************************************************************** //\n"
	HeadH="$HeadH//                                                                            //\n"
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	DAT=$(date +"%b %a %d %H:%M %Y")
	firstline="created on $DAT"
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	firstline="Made by : $USER  <$MAIL>"
	rfl=$[${#firstline} + 21]
	HeadH="$HeadH//                   $firstline"
	while [ $rfl -lt 78 ]
	do
		HeadH="$HeadH "
		rfl=$[$rfl + 1]
	done
	HeadH="$HeadH//\n"
	HeadH="$HeadH//                                                                            //\n"
	HeadH="$HeadH// ************************************************************************** //\n"
	HeadH="$HeadH\n"
	CNAME=$(echo $1 | awk '{ print toupper($0)}')
	HeadH="$HeadH#include <iostream>\n"
	HeadH="$HeadH#include \"$NAMH\"\n"
	foo=$1
	CNAME=`echo ${foo:0:1} | tr  '[a-z]' '[A-Z]'`${foo:1}
	HeadH="$HeadH\n\n\n$CNAME::$CNAME( void ) {\n\n\tstd::cout << \"Constructor called\" << std::endl;\n\treturn;\n}\n"
	HeadH="$HeadH\n\n$CNAME::~$CNAME( void ) {\n\n\tstd::cout << \"Destructor called\" << std::endl;\n\treturn;\n}\n"
	HeadH="$HeadH// ************************************************************************** //"
	echo -e $HeadH >> $NAMF
	echo $NAMF created
	IFS="$OLD_IFS"
