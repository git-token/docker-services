#!/bin/sh

docker run -ti \
  -v /home/ryan/.local/share/io.parity.ethereum/docker/:/mnt/ \
  -p 8180:8180 \
  -p 8545:8545 \
  -p 30303:30303 \
  parity/parity:v1.6.8 \
  --rpccorsdomain="*" \
  --geth  \
  --config /mnt/config.toml
