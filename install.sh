#!/bin/sh

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install docker-compose
DEBIAN_FRONTEND=noninteractive apt-get install --yes python3-pip libffi-dev
pip3 install docker-compose

# Clone repository
cd /opt
git clone https://github.com/dyne/devuan-rpi4-home-assistant
cd devuan-rpi4-home-assistant

# Setup hostname
echo 'homeassistant' > /etc/hostname

# Run docker-compose at startup
echo '@reboot cd /opt/devuan-rpi4-home-assistant && docker-compose up -d' >> /var/spool/cron/crontabs/root

# Run docker-compose now
/opt/devuan-rpi4-home-assistant/start.sh
