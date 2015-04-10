#!/bin/bash
if [ "$RACK_ENV" == "production" ]; 
then 
  bundle install --without development test
else
  bundle install
fi

ruby $MAIN_APP_FILE -p 80
