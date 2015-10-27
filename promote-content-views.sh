#!/bin/bash
if [ $# -lt 3 ]
then
	echo "promote-content-views.sh [ORG_ID] [CONTENT_VIEW_ID] [LIFECYCLE_ENVIRONMENT_STAGE_ID]"
	exit 1
fi

## List all of the hammer products
hammer content-view list --organization-id $1
