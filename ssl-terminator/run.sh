#!/bin/bash

echo "$CERT" > /tmp/cert.pem

nginx

hitch-openssl --user=nobody --backend=$BACKEND --frontend=$FRONTEND --ciphers="$CIPHERS" /tmp/cert.pem
