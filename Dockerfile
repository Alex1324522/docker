FROM ruby:3.0.0
WORKDIR /home/app
COPY ./ /home/app
RUN gem install bundler:2.3.12 && gem install rails
RUN bundle install
EXPOSE 7000
CMD ["bundle",  "exec", "rails", "server"]
