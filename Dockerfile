FROM ubuntu
MAINTAINER  Mike May <themistymay@gmail.com>

RUN apt-get update
RUN apt-get -y -q install tcpdump

RUN mkdir -p /data/pcaps

ENTRYPOINT ["tcpdump", \
    "-nnvvXSs", "1514", \
    "-s65535", \
    "-G", "3600", \
    "-w", "/data/pcaps/trace_%Y-%m-%d_%H:%M:%S.pcap", \
    "-z", "gzip"]
