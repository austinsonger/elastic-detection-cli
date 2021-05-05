FROM ubuntu:latest

LABEL maintainer="Austin Songer <austin@songer.pro>"

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  build-essential git-core wget \
  whois \
  python3.8 \
  python3-pip \
  autoconf \
  curl \
  ssh \
  slurm \
  curl \
  libssl-dev \
  net-tools && \
  rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apt/*

RUN git clone https://github.com/elastic/detection-rules.git && \
  cd detection-rules && \
  pip3 install -r requirements.txt && \
  rm -rf .git

WORKDIR /detection-rules

ENTRYPOINT ["bash"]
