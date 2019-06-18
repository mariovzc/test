FROM ruby:2.6.2-alpine3.9

RUN apk add --update --virtual runtime-deps mysql-client nodejs libffi-dev readline sqlite

# Bundle into the temp directory
WORKDIR /tmp
ADD Gemfile* ./

RUN apk add --virtual build-deps build-base mysql-dev libc-dev linux-headers libxml2-dev libxslt-dev readline-dev
RUN gem install bundler -v 2.0.1
RUN gem install nokogiri -v 1.10.3
RUN bundle install --jobs=2

EXPOSE 3000

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . $APP_HOME

ENTRYPOINT ["rails", "server"]
