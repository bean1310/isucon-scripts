#!/bin/bash

docker run -it --rm \
-v ${PWD}/src/setup.sh:/root/setup.sh \
-w /root \
ubuntu:20.04 bash
