FROM ruby:2.5
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY . $APP_HOME
ENV BUNDLE_PATH /bundle
RUN gem install bundler
RUN bundle install
RUN curl -sL https://deb.nodesource.com/setup_8.x |   bash -
RUN  apt-get install -y nodejs
CMD tail -f /dev/null