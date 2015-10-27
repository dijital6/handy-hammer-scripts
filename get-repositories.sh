#!/bin/bash
## Specify the organization id as the first command line argument
ORG_ID=$1

if [ $# -lt 1 ]
then
	echo "get-repositories.sh  [ORG_ID]"
	exit 1
fi
	

## List all of the hammer products
hammer repository list --organization-id ${ORG_ID}
