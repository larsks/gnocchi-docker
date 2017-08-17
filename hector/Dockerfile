FROM ubuntu:xenial

RUN apt-get update -y && apt-get install -y \
    python \
    python-dev \
    python-pip \
    libyaml-dev \
    build-essential \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN pip install envtpl
RUN pip install git+https://github.com/larsks/hector-the-collector
COPY config.json /etc/hector/config.json

COPY run_hector.sh /run_hector.sh
CMD ["/bin/sh", "/run_hector.sh"]
