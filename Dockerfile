FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY . .
RUN bundle install
RUN gem install mosql


CMD ["/bin/bash"]
#mosql --mongo mongodb://node1,node2,node3?readPreference=secondary"]

