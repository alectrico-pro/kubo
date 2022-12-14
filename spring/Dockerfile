FROM ruby:2.4.1

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# install bundler in specific version
RUN gem install bundler --version "1.15.3"

# install required system packages for ruby, rubygems and webpack
RUN apt-get update && apt-get upgrade -y && \
    apt-get install --no-install-recommends -y ca-certificates nodejs yarn \
    libicu-dev imagemagick unzip qt5-default libqt5webkit5-dev \
    gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x \
    xvfb xauth openjdk-7-jre --fix-missing

RUN mkdir -p /app
WORKDIR /app

# install node dependencies (e.g. webpack)
# next two steps will be cached unless either package.json or
# yarn.lock changes
COPY package.json yarn.lock /app/
RUN yarn install

# bundle gem dependencies
# next two steps will be cached unless Gemfile or Gemfile.lock changes.
# -j $(nproc) runs bundler in parallel with the amount of CPUs processes 
COPY Gemfile Gemfile.lock /app/
RUN bundle install -j $(nproc)
