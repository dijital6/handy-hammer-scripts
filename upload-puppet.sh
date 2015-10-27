#!/bin/bash
## Specify the organization id as the first command line argument
ORG_ID=$1
PRODUCT_ID=$2
MODULE_PATH=$3

if [ $# -lt 3 ]
then
	echo "get-repositories.sh  [ORG_ID] [PRODUCT_ID] [MODULE_PATH]"
	exit 1
fi
	

## List all of the hammer products
hammer repository upload-content --organization-id ${ORG_ID} --product-id ${PRODUCT_ID} --path ${MODULE_PATH}
