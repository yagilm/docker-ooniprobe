FROM alpine:edge
RUN apk update
RUN apk add python python-dev py2-pip build-base geoip-dev libcap-dev libffi-dev gmp-dev tor ca-certificates libpcap-dev openssl-dev libdnet-dev
RUN pip install --upgrade pip
RUN pip install ooniprobe
COPY entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
