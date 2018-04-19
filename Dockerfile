FROM alpine:3.4

WORKDIR /usr/src/app

RUN apk update && apk add nodejs git
RUN npm install -g webpro/reveal-md#2.0.0-rc.2

RUN mkdir -p /usr/lib/node_modules/reveal-md/node_modules/reveal.js/images

COPY resources/side_blue_pattern.svg /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/footer_pattern.svg /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/footer_blue_pattern_logo.svg /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/pattern.svg /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/logo.svg /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/loading.gif /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/cs.css /usr/lib/node_modules/reveal-md/node_modules/reveal.js/css/theme/
COPY resources/reveal.html /usr/lib/node_modules/reveal-md/lib/template/
COPY resources/listing.html /usr/lib/node_modules/reveal-md/lib/template/

EXPOSE 1948

CMD ["sh", "-c", "reveal-md /usr/src/app -w --theme cs"]
