#!/bin/sh

# get user, secret, and server from ENV
# register the user, enable auto-answer, wait for user input?
# use sensible defaults where possible

# SIP_USER must be specified
# SIP_SECRET must be specified

SIP_SERVER=${SIP_SERVER:-asterisk}
SIP_PORT=${SIP_PORT:-5060}


pjsua \
  --config-file="/app/pjsua.conf" \
  --id="sip:${SIP_USERNAME}@${SIP_SERVER}:${SIP_PORT}" \
  --registrar="sip:${SIP_SERVER_HOST}:${SIP_SERVER_PORT}" \
  --username="${SIP_USER}" \
  --password="${SIP_SECRET}"
  
  