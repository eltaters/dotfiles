#!/bin/bash

# Get SAML credentials from vpn auth
CREDENTIALS=$(gp-saml-gui --gateway --allow-insecure-crypto vpn.uam.es --no-verify 2>&1)
COOKIE=$(echo "$CREDENTIALS" | grep "prelogin-cookie" | sed -n "s/.*'prelogin-cookie': '\([^']*\)'.*/\1/p")
USERNAME=$(echo "$CREDENTIALS" | grep "saml-username" | sed -n "s/.*'saml-username': '\([^']*\)'.*/\1/p")

# Connect to vpn with credentials
echo $COOKIE | sudo openconnect --protocol=gp '--useragent=PAN GlobalProtect' --allow-insecure-crypto --user=$USERNAME --os=linux-64 --no-proxy --usergroup=gateway:prelogin-cookie --passwd-on-stdin vpn.uam.es
