# DIY Home Assistant setup for Devuan on RaspberryPi 4

This repo contains a quick setup of [Home Assistant](https://home-assistant.io) (hass) including the extensions:

- Node Red (visual programming)
- Rhasspy (voice control)
- Mosquitto (MQTT messaging)
- ESPhome (NodeMCU support)

We use the Devuan GNU/Linux distro version 3.1 (Beowulf) based on images found on [arm-files.devuan.org](https://arm-files.devuan.org)

To run the hass setup we use Docker and Docker-Compose images distributed by upstream developers, for practicality. This may change in the future into a fully native setup if needed.

This setup is used for speculative design experiments in cooperation with Gianni Corino of [i-DAT](https://i-DAT.org) (Plymouth University) and supported by the [SWCTN Data Fellowship](https://www.swctn.org.uk/data/).
