FROM alpine:3.4

WORKDIR /usr/src/app

RUN apk update && apk add nodejs
RUN npm install -g reveal-md

RUN mkdir /usr/src/app/theme
COPY resources/* /usr/src/app/css

EXPOSE 1948

CMD ["sh", "-c", "reveal-md -w --css css/cs.css slides.md"]
