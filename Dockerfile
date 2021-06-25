FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN apt-get update && \
  apt-get install -y git && \
  curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
  apt-get install -y ./google-chrome-stable_current_amd64.deb && \
  rm google-chrome-stable_current_amd64.deb && \
  rm -rf /var/lib/apt/lists/* /var/cache/apt/*
