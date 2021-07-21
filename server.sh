#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa run -m models --enable-api --cors "*" --debug --port $PORT
rasa run actions --endpoints endpoints.yml --cors "*" --enable-api