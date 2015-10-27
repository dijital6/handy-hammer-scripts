#!/bin/bash
CV_ID=$1
if [ $# -lt 1 ]
then
	echo "get-content-view-versions.sh [CV_ID]"
	exit 1
fi

## List all of the hammer products
hammer content-view version list --content-view-id=${CV_ID}
