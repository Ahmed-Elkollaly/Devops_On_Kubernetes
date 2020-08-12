#!/bin/bash
eksctl create cluster \
--name devops-prod \
--version 1.16 \
--region us-west-2 \
--nodegroup-name linux-nodes \
--node-type t3.medium \
--nodes 1 \
--nodes-min 1 \
--nodes-max 2 \
--ssh-access \
--ssh-public-key devops-key.pub \
--managed