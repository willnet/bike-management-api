FROM ruby:2.6.5

RUN mkdir -p /api
WORKDIR /api
ADD Gemfile /api/Gemfile
ADD Gemfile.lock /api/Gemfile.lock
RUN bundle install -j4
ADD . /api

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
