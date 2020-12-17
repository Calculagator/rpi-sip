# rpi-sip
## A SIP client for Raspberry Pi

## Purpose
Create an inexpensive SIP client device that can serve as an endpoint in an intercom or bell system.

### Notes
- I think it will be easiest to use docker containers: they can be somewhat cross-platform. I think they should also be easier to configure remotely with sip registration info with a service like balena.io
- Alpine linux
- pjsua package
- mount /dev/snd for audio i/o?
- - must mount as a device --device /dev/snd:/dev/snd
- alsa packages? apk add alsa-utils alsa-utils-doc alsa-lib alsaconf
- do we need alsa on the host os?

- SIP user, secret, and server should all come from environment variables


- I need to figure out which ports are necessary in/out for the container. Would I ever want more than one active?