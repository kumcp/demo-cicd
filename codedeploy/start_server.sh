#!/bin/bash
# source /home/ec2-user/web/.env
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 434839081440.dkr.ecr.us-east-1.amazonaws.com
cd /home/ec2-user/web/ && /usr/local/bin/docker-compose -f docker-compose.yml up -d
