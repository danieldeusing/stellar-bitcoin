#!/bin/bash

# bitcoin.conf needed for using bitcoin-cli to on the server

mkdir -p /root/.bitcoin

# if file already exists, this appends and the existing user/pass is used instead of the new one
# changed first line to > instead of >>
[[ -n $RPCUSER ]] && echo "rpcuser=${RPCUSER}" > /root/.bitcoin/bitcoin.conf
[[ -n $RPCPASSWORD ]] && echo "rpcpassword=${RPCPASSWORD}" >> /root/.bitcoin/bitcoin.conf

bitcoind "$@"
