#!/bin/bash
#
##################################
#Author: Vadish Chhatwal#
#Date: 1st June 2024
#Project Name: AWS_RESOURCE_TRACKER
##################################


#Puts our script in Debug Mode, shows which commands are getting
#executed & what is the output
set -x

#AWS S3 : List S3 buckets
echo "Print List of s3 buckets"
aws s3 ls

#AWS EC2 : List EC2 instances
echo "Print List of EC2 instances"
aws ec2 describe-instances

#But I Have a lot of ec2 instances on my console, script is making a mess, I want only instance ID, this is how that can be done:
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Here jq : JSON parser and yq : YAML parser

#AWS Lambda : List Lambda Functions
echo "Print List of Lambda Functions"
aws lambda list-functions

#AWS IAM : List of IAM Users
echo "Print List of IAM users"
aws iam list-users
