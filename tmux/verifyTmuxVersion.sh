#!/bin/bash

# SOURCED FROM GITHUB.COM/VINCENTHSU/.TMUX.CONF

VERSION=`tmux -V | cut -c 6-`

if [[ "$VERSION" < "1.9" ]]; then
	echo "1.9"

elif [[ "$VERSION" < "2.1" ]]; then
    echo "2.1"

else
	echo "HIGHER"
fi


