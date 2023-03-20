#!/bin/bash
su ubuntu -c ' 
cd /home/ubuntu
mkdir actions-runner
cd actions-runner
curl -o actions-runner-linux-x64-2.303.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz
tar xzf ./actions-runner-linux-x64-2.303.0.tar.gz
./config.sh --url '${githubActionsUrl}' --token '${githubActionsToken}'
./run.sh '
