#!/bin/sh

if [[ -z $PROJECT ]]; then
  echo "!! missing PROJECT id"
  exit 1
fi

if [[ -z $ZONE ]]; then
  echo "!! missing ZONE. Pick one below"
  gcloud container clusters list --project=$PROJECT
fi

VOLUME=certbot-certificates
SIZE=10GB

echo "=> Creating $VOLUME ($SIZE) on zone $ZONE"

gcloud compute disks create \
  --project=$PROJECT \
  --size=$SIZE \
  --zone=$ZONE \
  $VOLUME

echo "=> Done!"
