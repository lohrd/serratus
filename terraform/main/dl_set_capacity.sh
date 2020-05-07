#!/bin/bash
set -eux
export AWS_REGION=us-east-1
aws autoscaling set-desired-capacity \
  --auto-scaling-group-name tf-asg-tf-serratus-dl-20200507194936684300000008 \
  --desired-capacity $1
