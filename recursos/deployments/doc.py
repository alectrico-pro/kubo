#!/usr/bin/env python
#Esto se usa para interfacear docker desde python
# pip install docker-py
from docker import Client

NAME = 'foobar'

cli = Client(version='auto')

# Create an invalid security option that will cause an error in
# https://github.com/docker/docker/blob/v1.10.3/daemon/create.go#L82
host_config = cli.create_host_config(security_opt=['invalid_opt'])

# After this, NAME will always conflict until the daemon gets restarted
try:
    cli.create_container(name=NAME, host_config=host_config, image='', command='/')
except:
    pass

