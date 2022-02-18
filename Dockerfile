FROM ruby:2.7.2

# HACK: Needed for debian to provide latest version of postgres client
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' > \
 /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
 apt-key add -

RUN apt-get update -qq && apt-get install --fix-missing -y \
  build-essential \
  locales \
  postgresql-client-9.6 \
  apt-transport-https

# install nodejs & yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -; \
  apt-get update -qq && apt-get install nodejs && \
  npm install --global yarn

RUN curl -sS https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -; \
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google.list; \
  apt-get update && apt-get install -y google-chrome-stable

ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=20 \
  BUNDLE_PATH=/bundle \
  BUNDLER_VERSION=2.1.4

RUN gem install bundler:2.1.4

RUN mkdir /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

WORKDIR /app

RUN bundle install

ENV PATH="/app/bin:${PATH}"

ADD . /app
