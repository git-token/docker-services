FROM parity/parity:v1.7.0

# Add Configuration files
WORKDIR /root/parity

ADD config.toml .
ADD chain.json .
ADD .pk .

COPY keys .

EXPOSE 8545 8546 30303 30303/udp

CMD parity account import /root/parity/keys/GitToken

# CMD parity
