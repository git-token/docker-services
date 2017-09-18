# Build Geth in a stock Go builder container
FROM golang:1.9-alpine as builder

RUN apk add --no-cache curl make gcc musl-dev linux-headers git

RUN git clone https://github.com/ethereum/go-ethereum.git
RUN cd ./go-ethereum && make all && cp -r ./build/bin/* /usr/local/bin/

# Pull Geth into a second stage deploy alpine container
FROM alpine:latest

COPY --from=builder /usr/local/bin/ /usr/local/bin/

# RUN mkdir /root/.ethereum
# RUN mkdir /root/.ethereum/privatenetwork
#
WORKDIR /root

# RUN apk add --no-cache wget
#
# RUN wget --no-check-certificate https://gist.githubusercontent.com/Ryanmtate/836759c9108edfd92c9b0483d4d6eb9a/raw/5ed946c8d767487d56877e9468916d094c437d5e/gittoken_genesis.json

RUN bootnode -genkey key

EXPOSE 30301/udp

CMD bootnode -nodekey key
# CMD bootnode -nodekey key -writeaddress

# EXPOSE 8545
# EXPOSE 30303
# EXPOSE 30301/udp
#
# CMD geth \
#   --networkid=9 \
#   --datadir=/root/.ethereum/privatenetwork \
#   --cache=128 \
#   --rpc \
#   --rpcapi="personal,eth,network,web3" \
#   --rpcaddr "0.0.0.0"
