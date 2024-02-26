#!/bin/bash


API_URL=https://api.github.com

USERNAME=$username
TOKEN=$token


REPO_OWNER=$1
REPO_NAME=$2

#Function to connect to github api
function github_auth {
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	#authenticate with github api
	curl -s -u "${USERNAME}:${TOKEN}" "${url}"
}

#Function to list all collaborators on the project
function list_colabs {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
	collaborators="$(github_auth "${endpoint}" | jq -r '.[] | select(.permissions.pull == true) | .login')"

	#Print the list of collaborators to the stdout
	if [[ -z "$collaborators" ]]; then
		echo "No User with read permissions found for ${REPO_OWNER}/${REPO_NAME}"
	else
		echo "Users  with read permissions found for ${REPO_OWNER}/${REPO_NAME}"
		echo "${collaborators}"
	fi
}

function helper_func {
	args_on_cmd=$#
	if [ "${args_on_cmd}" -ne 2 ]; then
		echo "Invalid number of arguments provided"
		echo "Two arguments required. 1.REPO_OWNER 2.REPO_NAME"
		echo "${args_on_cmd} number of arguments found instead of 2"
		exit 1
	fi
}

helper_func "$@"
list_colabs
