# Wormhole Local Validator

This repository contains a set of scripts to get started using Wormhole. It contains the wormhole local validator, along with code to spin up EVM and Solana local validators, and deployment code to add Wormhole contracts to those new chains.

## Dependencies
You will also need Docker; you can get either [Docker Desktop](https://docs.docker.com/get-docker/) if you're developing on your computer or if you're in a headless vm, install [Docker Engine](https://docs.docker.com/engine/). Make sure to have Docker running before you run any of the following commands.

To run EVM chains you will need [Ganache](https://github.com/trufflesuite/ganache#command-line-use).  
To run Solana chains you will need [Solana](https://docs.solana.com/cli/install-solana-cli-tools) installed. 

## Run EVM Chains
`yarn evm` will start up two EVM chain.

| Chain | Chain ID | RPC URL               | Chain Name | Address                                    |
| ----- | -------- | --------------------- | ---------- | ------------------------------------------ |
| EVM   | 2        | http://localhost:8545 | evm        | 0xC89Ce4735882C9F0f0FE26686c53074E09B0D550 |

They'll use the standard Wormhole test mnemonic
 (`myth like bonus scare over problem client lizard pioneer submit female collect`) 
 
 and use the first key for deployment and payment 
 
 (Public Key: `0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1`, 

 
 Private Key: (`0x4f3edf983ac636a65a842ce7c78d9aa706d3b113bce9c46f30d7d21715b23b1d`)) 

## Run Solana Chain
`yarn solana` will start up a Solana chain.

| Chain  | Chain ID | RPC URL               | Chain Name | Address                                     |
| ------ | -------- | --------------------- | ---------- | ------------------------------------------- |
| Solana | 101      | http://localhost:8899 | solana     | Bridge1p5gheXUvJ6jGWGeCsgPKgnE3YgdGKRVCMY9o |

## Run Wormhole
After you have the dependencies installed and the chains running, you can run Wormhole.

Simply run `npm run wormhole` and wait while the Wormhole Guardian builds a docker image. The first time you run this command, it might take a while (up to 550 seconds on a modern laptop!). After the image is built however, it'll be relatively fast to bring it up and down. 
