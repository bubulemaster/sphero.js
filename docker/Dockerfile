FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
    nodejs npm curl bash build-essential sudo g++-4.8 g++-4.8-multilib \
    libbluetooth-dev

RUN npm install -g node-gyp-install && \
    node-gyp-install && \
    npm install -g grunt-cli istanbul codeclimate-test-reporter

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
