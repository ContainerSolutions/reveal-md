FROM alpine:3.4
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apk update && apk add nodejs
RUN npm install -g reveal-md
RUN mkdir -p /usr/lib/node_modules/reveal-md/node_modules/reveal.js/images
COPY resources/cs.png /usr/lib/node_modules/reveal-md/node_modules/reveal.js/images/ 
COPY resources/cs.css /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
#COPY resources/reveal.css /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/
COPY resources/reveal.html /usr/lib/node_modules/reveal-md/template/
COPY resources/listing.html /usr/lib/node_modules/reveal-md/template/
EXPOSE 1948
ENTRYPOINT ["reveal-md"]
CMD ["-w", "--theme", "cs"]
