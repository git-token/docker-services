FROM parity/parity:v1.7.0

# Add Configuration files
WORKDIR /root/parity

ADD config.toml .
ADD chain.json .

EXPOSE 8545 8546 30303 30303/udp

CMD parity
