FROM node:4-onbuild
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json usr/src/app/package.json
RUN npm install -g reveal-md
COPY . /usr/src/app
EXPOSE 1948
ENTRYPOINT ["reveal-md"]
