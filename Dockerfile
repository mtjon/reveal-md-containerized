LABEL version="0.1.4"
LABEL description="Crude containerization of reveal-md"

ARG BASE_IMG=node:alpine
FROM $BASE_IMG

ARG REVEAL_PORT="1948"

USER node

WORKDIR /home/node

RUN mkdir -p /home/node/npm-packages && \
    touch /home/node/.npmrc && \
    echo "prefix=/home/node/.npm-packages" >> /home/node/.npmrc

RUN npm install -g reveal-md

ENTRYPOINT ["/home/node/.npm-packages/bin/reveal-md"]

WORKDIR /home/node/work

EXPOSE $REVEAL_PORT
