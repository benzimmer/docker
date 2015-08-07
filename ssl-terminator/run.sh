#!/bin/bash

echo "$CERT" > /tmp/cert.pem

nginx

hitch-openssl --backend=$BACKEND --frontend=$FRONTEND --ciphers="$CIPHERS" /tmp/cert.pem
