FROM ruby:2.5.3

RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

RUN mkdir /sampleapp

WORKDIR /sampleapp

COPY Gemfile /sampleapp/Gemfile
COPY Gemfile.lock /sampleapp/Gemfile.lock

RUN bundle install

COPY . /sampleapp
