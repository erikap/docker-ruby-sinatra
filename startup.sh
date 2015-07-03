#!/bin/bash
if [ "$RACK_ENV" == "production" ]; 
then 
  bundle install --without development test
  ruby $MAIN_APP_FILE -p 80
else
  bundle install
  gem install shotgun
  shotgun $MAIN_APP_FILE -p 80 -o '0.0.0.0'
fi


