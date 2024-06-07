# Use an official Ruby runtime as a parent image
FROM ruby:3.2.3

RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client git ruby-bundler libpq-dev
RUN mkdir Rails-DB-APP/
RUN mkdir test/
WORKDIR /Rails-DB-APP
COPY . /Rails-DB-APP


RUN npm install
RUN npm install -g yarn
RUN yarn install
RUN bundle install

EXPOSE 3000
EXPOSE 3035

CMD ["sh", "-c", "./bin/webpack-dev-server -b 0.0.0.0 -p 3035 & bundle exec rails server -b 0.0.0.0 -p 3000"]

