From ruby:3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get install -y vim

# install bundler
RUN gem install bundler
RUN gem install rails

# Update using bundler




