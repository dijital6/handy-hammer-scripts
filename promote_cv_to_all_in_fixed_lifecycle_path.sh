#!/bin/bash
## An example promotion cycle for 5 lifecycle id's
CV_ID=$1
CONTENT_VIEW_VERSION_ID=$2

## This is the important bit... the sequence of numbers below denotes the predefined 
## lifecycle environments we wish to promote a version of a content view to.
## if this is the wrong sequence, it will fail.
PROMOTION_CYCLE="8 9 10 11 12"

PROMOTION_SCRIPT="./promote-content-view.sh"

if [ $# -lt 2 ]
then
	echo "Usage: $0 [CV_ID] [CONTENT_VIEW_VERSION_ID]"
	exit 1
fi

for CYCLE in ${PROMOTION_CYCLE}
do
	CMD="${PROMOTION_SCRIPT} ${CV_ID} ${CONTENT_VIEW_VERSION_ID} ${CYCLE}"
	echo ${CMD}
	$(${CMD})
done
