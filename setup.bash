#!/usr/bin/env bash

# Check if wormhole/ repo exists.
# If it doesn't then clone
if [ ! -d "./wormhole" ] 
then
    # Install Foundry
    curl -L https://foundry.paradigm.xyz | bash
    foundryup
    # Install Wormhole
    git clone https://github.com/wormhole-foundation/wormhole
    cd wormhole/clients/js
    make install
    cd ../../scripts
    bash guardian-set-init.sh 1
    cd ../../
fi
