FROM ruby:2.5




# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY . .
ADD upkeep_schema.yaml collections.yml
RUN bundle install
RUN gem install mosql
RUN chmod 775 start.sh
ENTRYPOINT ["/usr/src/app/start.sh"]

