#!/bin/sh

echo "[$(date)] STARTED $0"

while :
do
  echo "[$(date)] certbot --renew"

  # sleep for one day (in seconds)
  sleep 86400
done
