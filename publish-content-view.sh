#!/bin/bash
######################################################################
# Publish an exisiting content view to a new version.
# Promotion will not happen in this script.
######################################################################
ORG_ID=$1
CV_ID=$2
if [ $# -lt 2 ]
then
	echo "publish-content-view.sh [ORG_ID] [CONTENT_VIEW_ID"
	exit 1
fi

## Publish a new version of a content view. 
hammer content-view publish --organization-id=$1 --id=$2
