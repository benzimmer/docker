FROM debian:wheezy
MAINTAINER benzimmer "https://github.com/benzimmer"
ENV HITCH_VERSION 1.0.0-beta5

RUN apt-get update &&\
    apt-get install -y --force-yes --no-install-recommends build-essential automake curl openssl ca-certificates libssl-dev libev-dev nginx &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/varnish/hitch/archive/hitch-$HITCH_VERSION.tar.gz | tar -xzf - &&\
    cd hitch-hitch-$HITCH_VERSION/ &&\
    ./bootstrap &&\
    ./configure &&\
    make &&\
    make install &&\
    cd - &&\
    rm -r hitch-hitch-$HITCH_VERSION

COPY nginx.conf /etc/nginx/sites-enabled/default.conf
COPY run.sh /

EXPOSE 8000 8443

CMD ./run.sh
