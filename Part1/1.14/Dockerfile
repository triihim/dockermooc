FROM ruby:2.6

WORKDIR /project

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

COPY ./rails-example-project .

RUN bundle install
RUN rails db:migrate

EXPOSE 3000

CMD ["rails", "s"]