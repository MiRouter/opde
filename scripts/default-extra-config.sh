#!/bin/bash

if ( argsContains "--help" );then
    echo -e "
    --build-sdk     disable extra default package (useful for build SDK)[default is disable]"
fi

if ( argsContains "--build-sdk" );then
    CONFIG_CONTS+="
CONFIG_ALL_KMODS=y
CONFIG_PACKAGE_usign=y
$(GEN_SDK_IB y)
$(DEFAULT_EXTRA_PACKAGE n)
"
fi