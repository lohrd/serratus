#!/bin/bash
set -eu
echo "Tunnels created:"
ssh -Nf -L 3000:localhost:3000 ec2-user@ec2-3-230-61-177.compute-1.amazonaws.com
echo "    localhost:3000 -- grafana"
ssh -Nf -L 9090:localhost:9090 ec2-user@ec2-3-230-61-177.compute-1.amazonaws.com
echo "    localhost:9090 -- prometheus"
ssh -Nf -L 8000:localhost:8000 ec2-user@ec2-35-171-197-28.compute-1.amazonaws.com
echo "    localhost:8000 -- scheduler"
