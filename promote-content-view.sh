#!/bin/bash
CV_ID=$1
CONTENT_VIEW_VERSION_ID=$2
LIFECYCLE_ID=$3

if [ $# -lt 3 ]
then
	echo "promote-content-view.sh [CONTENT_VIEW_ID] [CONTENT_VIEW_VERSION_ID] [LIFECYCLE_ID]"
	exit 1
fi

## promote the content view to the appropriate lifecycle ID.
CMD="hammer content-view version promote --content-view-id=${CV_ID} --id=${CONTENT_VIEW_VERSION_ID} --to-lifecycle-environment-id=${LIFECYCLE_ID}"
echo ${CMD}
$($CMD)
