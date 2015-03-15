FROM hypriot/rpi-iojs:latest

RUN apt-get update && apt-get install -y \
  git \
  wget \
  chromium-browser

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN wget https://github.com/jtg-gg/node-webkit/releases/download/nw-v0.12.0/nwjs-v0.12.0-linux-arm.tar.gz
RUN tar -xfv nwjs-v0.12.0-linux-arm.tar.gz

RUN npm install

# Expose the ports that your app uses. For example:
EXPOSE 8080
