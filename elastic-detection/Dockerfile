FROM ubuntu:latest

LABEL maintainer="Austin Songer <austin@songer.pro>"

# Configure Locale
ENV LANG=en_US.UTF-8

# Configure Timezone
ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  build-essential git-core wget \
  whois \
  python3.8 \
  python3-pip \
  autoconf \
  sudo \
  curl \
  ssh \
  slurm \
  curl \
  libssl-dev \
  net-tools


RUN git clone https://github.com/elastic/detection-rules.git && \
  cd detection-rules && \
  pip3 install -r requirements.txt 
  # rm -rf .git

RUN pip3 install virtualenv

RUN git clone https://github.com/Neo23x0/sigma && \
  cd sigma && \
  python3 -m virtualenv .venv3 && \
  . .venv3/bin/activate && \
  cd tools && \
  pip3 install -r requirements.txt --ignore-installed --no-cache-dir && \

RUN git clone https://github.com/3CORESec/SIEGMA && \
  cd SIEGMA && \
  python3 -m virtualenv .venv3 && \
  . .venv3/bin/activate && \
  pip install -r requirements.txt --ignore-installed --no-cache-dir && \

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf /var/cache/apt/*

WORKDIR /detection-rules

ENTRYPOINT ["bash"]
