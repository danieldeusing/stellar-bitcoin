#!/bin/bash

# bitcoin.conf needed for using bitcoin-cli to on the server

mkdir -p /root/.bitcoin

# if file already exists, this appends and the first user/pass is used which is probably old and invalid (todo)
[[ -n $RPCUSER ]] && echo "rpcuser=${RPCUSER}" >> /root/.bitcoin/bitcoin.conf
[[ -n $RPCPASSWORD ]] && echo "rpcpassword=${RPCPASSWORD}" >> /root/.bitcoin/bitcoin.conf

bitcoind "$@"
