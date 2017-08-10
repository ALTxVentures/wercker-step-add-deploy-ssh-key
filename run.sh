#!/bin/bash

# Step name options prefix: WERCKER_ADD_DEPLOY_SSH_KEY

export PRIVATEKEY_PATH=`mktemp`
privateKey=$(eval echo "\$${WERCKER_ADD_DEPLOY_SSH_KEY_KEYNAME}_PRIVATE")
echo -e "$privateKey" > $PRIVATEKEY_PATH
if [[ ! -n $SSH_AGENT_PID ]]; then eval `ssh-agent -s`; fi
ssh-add $PRIVATEKEY_PATH
