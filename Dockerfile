FROM alpine:edge
# install dependences
RUN apk update
RUN apk add python python-dev py2-pip build-base geoip-dev libcap-dev libffi-dev gmp-dev tor ca-certificates libpcap-dev openssl-dev libdnet-dev
RUN pip install --upgrade pip
# install ooniprobe
RUN pip install ooniprobe
# write configuration (because default listens only to localhost)
RUN printf '%s\n    %s\n    %s\n' 'advanced:' 'webui_port: 8080' 'webui_address: "0.0.0.0"' >> /var/lib/ooni/ooniprobe.conf
# run agent in foreground
CMD ["/usr/bin/ooniprobe-agent","run"]
