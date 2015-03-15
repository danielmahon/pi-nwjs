FROM hypriot/rpi-iojs:latest

RUN apt-get update && apt-get install -y \
  git \
  wget \
  chromium-browser \
  libnotify4

WORKDIR /usr/src/app

RUN wget https://github.com/jtg-gg/node-webkit/releases/download/nw-v0.12.0/nwjs-v0.12.0-linux-arm.tar.gz
RUN tar xvfz nwjs-v0.12.0-linux-arm.tar.gz
RUN rm -rfv nwjs-v0.12.0-linux-arm.tar.gz

COPY . /usr/src/app

RUN npm install

RUN xhost +

# Expose the ports that your app uses. For example:
EXPOSE 8080
