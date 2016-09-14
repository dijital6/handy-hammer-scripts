#!/usr/bin/bash
###############################################################################
# Simple hammer script to iterate through each repository in each organisation
# and synchronise it.
# The script will ignore failures. We will print a small message on failure.
###############################################################################

# A few settings
HAMMER="/usr/bin/hammer"
SAVEIFS=$IFS
IFS=$'\n'

## Get a list of all the organisations
ORGS=$(${HAMMER} --csv organization list | grep -v ^Id) 
echo "Getting repositories for all organisations"

## Loop through each organisation
for ORG in ${ORGS}
do
	ORG_ID=$(echo ${ORG} | awk -F',' '{ print $1}')
	ORG_LABEL=$(echo ${ORG} | awk -F',' '{ print $3}')
	echo "Checking organisation ${ORG_LABEL} (ID=${ORG_ID})"
	REPOS=$(${HAMMER} --csv repository list --organization-id=${ORG_ID} | grep -v ^Id )

	## Loop through each repository in each organisation
	for REPO in ${REPOS}
	do
		REPO_ID=$(echo ${REPO} | awk -F',' '{print $1}')
		REPO_NAME=$(echo ${REPO} | awk -F',' '{print $2}')
		echo "Attempting to synchronise repo ${REPO_NAME} (ID=${REPO_ID})"

		## Synchronise each repository. Print result, but don't exit on failure.
		${HAMMER} repository synchronize --id=${REPO_ID} --organization-id=${ORG_ID}
		if [ $? -ne 0 ]
		then
			echo "Synchronisation of ${REPO_NAME} (ID=${REPO_ID}) failed"
		else
			echo "Synchronisation of ${REPO_NAME} (ID=${REPO_ID}) was successful"
		fi
	done
done

## Put the Input field seperator back like a tidy person.
IFS=${SAVEIFS}


