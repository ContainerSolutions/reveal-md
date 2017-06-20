FROM mhart/alpine-node

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD theme /usr/src/app/theme
ADD img /usr/src/app/img
ADD app.js /usr/src/app

RUN npm install -g reveal-md
ENTRYPOINT ["reveal-md", "--scripts", "app.js", "-w", "--port", "8080"]
