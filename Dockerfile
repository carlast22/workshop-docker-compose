FROM ruby:2.3-alpine

WORKDIR /app
COPY Gemfile /app
RUN bundle install
COPY . /app
EXPOSE 9292

CMD ["rackup", "--host", "0.0.0.0"]
