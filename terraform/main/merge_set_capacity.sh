#!/bin/bash
set -eux
export AWS_REGION=us-east-1
aws autoscaling set-desired-capacity \
  --auto-scaling-group-name tf-asg-tf-serratus-merge-20200507194936658300000007 \
  --desired-capacity $1
