FROM alpine:3.4
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apk update && apk add nodejs
RUN npm install -g reveal-md
COPY cs.css /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
RUN mkdir -p /usr/lib/node_modules/reveal-md/node_modules/reveal.js/images
COPY cs.png /usr/lib/node_modules/reveal-md/node_modules/reveal.js/images/ 
EXPOSE 1948
ENTRYPOINT ["reveal-md"]
