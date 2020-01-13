FROM node:lts-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH="/home/node/.npm-global/bin:${PATH}"

USER node
RUN npm install --global elm elm-test

ENTRYPOINT ["/bin/sh"]
