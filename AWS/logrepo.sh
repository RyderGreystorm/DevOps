#!/bin/bash

######################################################
# Author: Godbless Biekro
# Date: 20th Feb, 2024
# Descritpion:Script tracking resources of AWS
#Version 1.0

######################################################

set -eox pipefail #debug mode

# List all s3 buckets
aws s3 ls

# List all EC2 insatnces
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceID, State.Name]" --output table

#List all lambda functions
aws lambda list-functions --output table

# List all access identity management users
aws iam list-users --output table
