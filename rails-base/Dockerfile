FROM benzimmer/ruby:2.1.3

MAINTAINER benzimmer "https://github.com/benzimmer"

RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - &&\
    echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > /etc/apt/sources.list.d/pgdg.list &&\
    apt-get update &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --force-yes libpq-dev &&\
    apt-get clean

RUN curl -sL https://deb.nodesource.com/setup | bash - &&\
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --force-yes nodejs &&\
    apt-get clean

RUN apt-get install -qq -y libmysqlclient-dev

RUN gem install foreman

