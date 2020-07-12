FROM ruby:2.6.3-alpine3.9
ENV APP_ROOT /wrookies-api
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
# Solve difficulties installing nokogiri --
# see https://github.com/gliderlabs/docker-alpine/issues/53#issuecomment-179486583
RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
#   postgresql-client \
  && rm -rf /var/cache/apk/*
RUN apk add bash
COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
COPY . $APP_ROOT

# This script will be executed every time
# the container starts. Fixes a Rails-specific
# issue that prevents the server from restarting
# when a certain server.pid file already exists.
# See https://docs.docker.com/compose/rails/
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3001
CMD rails s -p 3001