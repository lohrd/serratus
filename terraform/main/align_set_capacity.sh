#!/bin/bash
set -eux
export AWS_REGION=us-east-1
aws autoscaling set-desired-capacity \
  --auto-scaling-group-name tf-asg-tf-serratus-align-20200507194936687300000009 \
  --desired-capacity $1
