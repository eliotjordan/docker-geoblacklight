FROM eliotjordan/docker-rails:4.0.0

MAINTAINER eliotj@princeton.edu

WORKDIR /usr/src
RUN apt-get -y install libsqlite3-dev
RUN git clone --recurse https://github.com/sul-dlss/geoblacklight-alpha.git

WORKDIR /usr/src/geoblacklight-alpha
RUN bundle 
RUN rake db:migrate

EXPOSE 3000
CMD ["rails", "server"]