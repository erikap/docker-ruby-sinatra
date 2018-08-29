FROM ruby:2.5

LABEL maintainer="erika.pauwels@gmail.com"

ENV RACK_ENV production
ENV MAIN_APP_FILE web.rb

RUN gem install sinatra rerun && mkdir -p /usr/src/app

WORKDIR /usr/src/app

EXPOSE 80

ADD startup.sh /

CMD ["/bin/bash", "/startup.sh"]
