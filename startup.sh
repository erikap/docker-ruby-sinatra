#!/bin/bash
gem install sinatra
if [ "$RACK_ENV" == "production" ]; 
then 
  bundle install --without development test
  exec ruby $MAIN_APP_FILE -p 80
else
  bundle install
  if [ "$RACK_ENV" == "test" ]; 
  then
    rspec
  else
    gem install sinatra-contrib
    exec ruby $MAIN_APP_FILE -p 80 -o '0.0.0.0'
  fi
fi
