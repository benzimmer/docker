FROM debian:wheezy

MAINTAINER benzimmer "https://github.com/benzimmer"
ENV RUBY_INSTALL_VERSION 0.5.0
ENV RUBY_VERSION 2.1.3

# Install packages for building ruby
RUN apt-get update &&\
    apt-get install -y --force-yes build-essential curl git &&\
    apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev &&\
    apt-get clean

RUN cd /tmp &&\
    curl -L https://github.com/postmodern/ruby-install/archive/v$RUBY_INSTALL_VERSION.tar.gz | tar -xzf - &&\
    cd ruby-install-$RUBY_INSTALL_VERSION/ &&\
    make install

RUN ruby-install ruby $RUBY_VERSION

ENV PATH /opt/rubies/ruby-$RUBY_VERSION/bin:$PATH

RUN echo "gem: --no-document" > ~/.gemrc

RUN gem install bundler
