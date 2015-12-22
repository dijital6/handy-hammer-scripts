#!/usr/bin/env bash
HOSTGROUP_NAME=$1

if [ $# -lt 1 ]
then
	echo "./$0 [HOSTGROUP_NAME]"
	exit 1
fi

hammer hostgroup delete --name ${HOSTGROUP_NAME}