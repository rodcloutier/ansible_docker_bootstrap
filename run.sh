#! /bin/bash

docker run \
       -ti \
       --rm \
       -v $HOME/.ssh:/hostssh \
       -v $PWD:/ansible \
       -w /ansible \
       --entrypoint ./ssh-wrap.sh \
       williamyeh/ansible:alpine3 $@
