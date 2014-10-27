FROM benzimmer/rails-base:ruby-2.1.3

MAINTAINER benzimmer "https://github.com/benzimmer"

RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - &&\
    echo "deb http://nginx.org/packages/debian/ wheezy nginx" > /etc/apt/sources.list.d/nginx.list &&\
    apt-get update &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --force-yes nginx &&\
    apt-get clean
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/example_ssl.conf
ADD nginx-rails.conf /etc/nginx/conf.d/default.conf

WORKDIR /app
ONBUILD ADD Gemfile /app/Gemfile
ONBUILD ADD Gemfile.lock /app/Gemfile.lock
ONBUILD RUN bundle install --without development test
ONBUILD ADD . /app

ADD Procfile /app/Procfile

CMD foreman start -f Procfile

EXPOSE 80
