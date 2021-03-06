FROM node:10.15.3-alpine

WORKDIR /usr/app

COPY package*.json ./

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" && npm install

COPY . .