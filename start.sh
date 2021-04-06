#!/bin/bash

set -e
cd /opt/devuan-rpi4-home-assistant
/usr/local/bin/docker-compose up -d >> /var/log/home-assistant.log 2>&1
