#!/bin/bash
ORG_ID=$1
if [ $# -lt 1 ]
then
	echo "USAGE: ./get-lifecycle-environments.sh [ORG_ID]"
	exit 1
fi

hammer lifecycle-environment list --organization-id $1
