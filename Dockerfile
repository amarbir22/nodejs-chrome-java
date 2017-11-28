FROM ubuntu:latest
MAINTAINER Amarbir Singh <amarbir22@gmail.com>

# Install utilities
RUN apt-get update && apt-get install -y \
    apt-utils \
    wget \
    sudo \
    curl && \
    # Install node 6 repo and chrome keys
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list && \
    # Install node 6 and chrome
    apt-get update && apt-get install -y \
    nodejs \
    google-chrome-stable \
    openjdk-8-jre-headless \
    xvfb \
    libxi6 \
    libgconf-2-4 \
    && apt-get purge --auto-remove -y curl \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /src/*.deb
