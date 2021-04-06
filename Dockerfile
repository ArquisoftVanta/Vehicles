FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /try5
WORKDIR /try5

ADD Gemfile /try5/Gemfile
ADD Gemfile.lock /try5/Gemfile.lock

RUN bundle install

ADD . /try5