FROM ruby:2.3.0
MAINTAINER Alvaro Manrique <alvaro.manrique84@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for node
RUN apt-get install -y python python-dev python-pip python-virtualenv

RUN curl -sL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs

# cleanup
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app
ONBUILD ADD . /app

CMD ["bash"]
