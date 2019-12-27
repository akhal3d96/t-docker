#!/bin/sh

if [ ! -e /root/.trc ]; 
then
    read -p "Your Twitter app consumer: " TWITTER_APP_CONSUMER_KEY
    read -p "Your Twitter app consumer secret: " TWITTER_APP_CONSUMER_SECRET
    twurl authorize --consumer-key "${TWITTER_APP_CONSUMER_KEY}" --consumer-secret "${TWITTER_APP_CONSUMER_SECRET}"
    cp .twurlrc .trc
fi

exec $@