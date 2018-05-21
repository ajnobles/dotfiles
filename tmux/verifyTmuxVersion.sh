#!/bin/bash

# SOURCED FROM GITHUB.COM/VINCENTHSU/.TMUX.CONF
SERVER=`echo $HOSTNAME | cut -d "." -f 2,3,4`
OSU="engr.oregonstate.edu"

if [ $SERVER == $OSU ]; then
    FOLDER="/nfs/stak/users/noblesal/dotfiles/tmux"
else
	FOLDER="~/dotfiles/tmux"
fi

tmux source-file $FOLDER/tmux.conf

VERSION=`tmux -V | cut -c 6-`

if [[ "$VERSION" < "1.9" ]]; then
	tmux source-file $FOLDER/tmux_1.8_down.conf

elif [[ "$VERSION" < "2.1" ]]; then
    echo "2.1"
	tmux source-file $FOLDER/tmux_1.9_to_2.1.conf

else
	tmux source-file $FOLDER/tmux_2.2_up.conf
fi
