#!/usr/bin/env bash
HOSTGROUP_NAME=$1
LIFECYCLE_NAME=$2

if [ $# -lt 2 ]
then
	echo "./$0 [ORG_ID] [LIFECYCLE_NAME]"
	exit 1
fi

hammer lifecycle-environment delete --organization-id ${ORG_ID} --name ${LIFECYCLE_NAME}