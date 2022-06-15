FROM python:3.7-buster

ARG PGUID=1000
ARG PUID=1000

ARG TZ="Santiago"
ARG LANGUAGE="es_CL:es"
ARG LC_NAME="es_CL.UTF-8"
ARG LC_IDENTIFICATION="es_CL.UTF-8"
ARG LC_TELEPHONE="es_CL.UTF-8"
ARG LC_TIME="es_CL.UTF-8"
ARG LANG="es_CL.UTF-8"


ENV TZ=$TZ
ENV RAILS_ENV=$RAILS_ENV
ENV PGUID=$PGUID
ENV PUID=$PUID

ENV LANGUAGE=$LANGUAGE
ENV LC_NAME=$LC_NAME
ENV LC_IDENTIFICATION=$LC_IDENTIFICATION
ENV LC_TELEPHONE=$LC_TELEPHONE
ENV LC_TIME=$LC_TIME
ENV LANG=$LANG

RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    && apt-get install -y vim \
    && apt-get -y install locales \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log 

# Set the locale
RUN sed -i '/es_CL.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen

RUN apt install vim -y
EXPOSE 8000
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /app
#ENTRYPOINT ["python3"]

