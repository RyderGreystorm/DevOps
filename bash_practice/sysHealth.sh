#!/bin/bash

################################################

# Author: Godbless Biekro
# Date: Feb 9th, 2024
# Version: 1.0

# Description: This script will check system health

##################################################

set -x #"debug mode"

df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
