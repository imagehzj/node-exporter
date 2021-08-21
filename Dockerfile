FROM ttbb/base

RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz  && \
mkdir -p /opt/sh/node_exporter && \
tar -xf node_exporter-1.2.2.linux-amd64.tar.gz -C /opt/sh/node_exporter --strip-components 1 && \
rm -rf node_exporter-1.2.2.linux-amd64.tar.gz

WORKDIR /opt/sh/node_exporter