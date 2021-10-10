FROM ruby:2.7.4-buster

RUN bundle config --global frozen 1

WORKDIR /app

COPY . .
RUN bundle install
