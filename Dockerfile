FROM hypriot/rpi-iojs:latest

RUN apt-get update && apt-get install -y \
  git \
  wget \
  chromium-browser

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm install

# Expose the ports that your app uses. For example:
EXPOSE 8080
