#! /bin/bash

docker run \
       -ti \
       --rm \
       -e ANSIBLE_INVENTORY=./ansible_hosts \
       -v $HOME/.ssh:/hostssh \
       -v $PWD:/ansible \
       -w /ansible \
       --entrypoint ./ssh-wrap.sh \
       $executable williamyeh/ansible:alpine3 $@
