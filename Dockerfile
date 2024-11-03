FROM node:lts-alpine
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"
WORKDIR /app

COPY . .

RUN npm install --production

RUN npm install --global

WORKDIR /workdir

ENTRYPOINT ["/usr/local/bin/markdownlint"]
