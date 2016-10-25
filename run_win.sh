#! /bin/bash

docker run \
       -ti \
       --rm \
       -v $PWD:/ansible \
       -w /ansible \
       williamyeh/ansible:alpine3 $@
