#Esto lo estoy usando para trabajar en modo local
#En bitbucket los tests se traban
#Así que uso tests en github y en codeship
#Veamos como se comportan
FROM ruby:2.6.5
RUN  apt-get update -qq && apt-get install -y nodejs postgresql-client &&\
 mkdir /myapp &&\
 apt-get install -y vim 

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE $PORT
