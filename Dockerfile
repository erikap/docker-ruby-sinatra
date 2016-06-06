FROM ruby:2.3

MAINTAINER Erika Pauwels <erika.pauwels@gmail.com>

ENV RACK_ENV production
ENV MAIN_APP_FILE web.rb

RUN mkdir -p /usr/src/app

ADD startup.sh /

WORKDIR /usr/src/app

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]
