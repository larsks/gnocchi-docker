FROM ubuntu:xenial

RUN apt-get update -y && apt-get install -y \
    python \
    python-dev \
    python-pip \
    libyaml-dev \
    build-essential \
    cron \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN pip install envtpl
RUN pip install git+https://github.com/larsks/hector-the-collector
COPY hector_cron /etc/cron.hourly
COPY config.json /etc/hector/config.json
CMD ["/usr/sbin/cron", "-f"]
