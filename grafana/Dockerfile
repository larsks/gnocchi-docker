FROM grafana/grafana
RUN apt-get update -y && apt-get install -y \
    git \
 && rm -rf /var/lib/apt/lists/*

COPY ./install-plugin.sh /install-plugin.sh
COPY ./configure.sh /configure.sh
COPY ./run-and-configure.sh /run-and-configure.sh
COPY ./datasource.json /datasource.json
ENTRYPOINT ["/run-and-configure.sh"]
