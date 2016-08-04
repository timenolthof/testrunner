FROM debian:latest

MAINTAINER Timen Olthof <timen@timenolthof.nl>

RUN apt-get update -y && \
    apt-get install -y \
    curl \
    && \
    rm -rf /var/lib/apt/lists/*

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"