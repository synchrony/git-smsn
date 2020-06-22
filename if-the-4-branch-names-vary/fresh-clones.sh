#!/bin/bash

git clone \
    file:///home/jeff/git_jbb/kb_extras.git \
    metadata
git clone -b collab \
    file:///home/jeff/git_jbb/smsn-private.git \
    private
git clone -b collab \
    file:///home/jeff/git_jbb/smsn-personal.git \
    personal
git clone \
    https://github.com/synchrony/data-public.git \
    public
git clone \
    https://github.com/synchrony/data-universal.git \
    universal
git clone \
    https://github.com/JeffreyBenjaminBrown/observatorio-fiscal-smsn.git \
    observatorio
