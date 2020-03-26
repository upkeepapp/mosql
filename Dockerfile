FROM ruby:2.5


ENV collections="collections.yaml"
ENV postgres="postgres://sql-server/sql-db"
ENV mongo="mongodb://mongo-uri"

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY . .
RUN bundle install
RUN gem install mosql
RUN chmod 775 start.sh
ENTRYPOINT ["/usr/src/app/start.sh"]

