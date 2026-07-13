#!/bin/bash
# gebruik: ./deploy.sh /pad/naar/nieuwe/site-map
cp -R "$1"/. .
git add -A && git commit -m "Deploy site $(date +%F)" && git push origin main
