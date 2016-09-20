FROM alpine:3.4
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apk update && apk add nodejs
RUN npm install -g reveal-md
EXPOSE 1948
ENTRYPOINT ["reveal-md"]
