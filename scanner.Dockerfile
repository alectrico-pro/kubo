FROM ruby:2.6.5

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
   && apt-get install -y curl \
   && apt-get -y install locales \
   && apt-get clean \
   && rm -rf /var/cache/apt/archives/* \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && truncate -s 0 /var/log/*log \
   && mkdir /myapp
COPY Gemfile /myapp
WORKDIR /myapp
RUN bundle install
COPY scan.rb /myapp

