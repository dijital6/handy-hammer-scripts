#!/usr/bin/env bash
ORG_ID=$1
HOSTGROUP_NAME=$2

if [ $# -lt 2 ]
then
	echo "./$0 [ORG_ID] [HOSTGROUP_NAME]"
	exit 1
fi

hammer hostgroup create --organization-id ${ORG_ID} --name ${HOSTGROUP_NAME}

