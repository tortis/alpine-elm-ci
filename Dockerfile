FROM node:latest as build

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

USER node
RUN npm install --global elm elm-test


FROM alpine:latest

COPY --from=build /home/node/.npm-global/bin/elm /usr/local/bin
COPY --from=build /home/node/.npm-global/bin/elm-test /usr/local/bin

ENTRYPOINT ["sh"]

CMD ["elm --version"]
