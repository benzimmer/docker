#!/bin/bash

echo "$CERT" > /tmp/cert.pem

hitch-openssl --backend=$BACKEND --frontend=$FRONTEND /tmp/cert.pem
