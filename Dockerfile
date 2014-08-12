FROM eliotjordan/docker-rails:4.0.0

MAINTAINER eliotj@princeton.edu

# generate new rails app
WORKDIR /usr/src
RUN apt-get -y install libsqlite3-dev
RUN rails new rails-app

WORKDIR /usr/src/rails-app

# Clone geoblacklight repo and geoblacklight-schema submodule
RUN git clone --recurse https://github.com/geoblacklight/geoblacklight.git

# Add geoblacklight gem
RUN echo "gem 'geoblacklight', :path => '.'" >> Gemfile
RUN bundle 

# Generate geoblacklight template
RUN rails generate blacklight:install --devise
RUN rake db:migrate
RUN rails generate geoblacklight:install

EXPOSE 3000
CMD ["rails", "server"]