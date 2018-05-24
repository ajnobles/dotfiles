#!/bin/bash

# THIS SCRIPT ENABLES TERMINESS POWERLINE

if [ ! -f "$HOME/.config/fontconfig/conf.d" ]; then
	if [ ! -d "$HOME/.config" ]; then
		echo "$HOME/.config does not exist"
		mkdir $HOME/.config
	fi

	if [ ! -d "$HOME/.config/fontconfig" ]; then
		echo "$HOME/.config/fontconfig does not exist... creating..."
		mkdir $HOME/.config/fontconfig
		echo "$HOME/.config/fontconfig created..."
	fi

	echo "$HOME/.config/fontconfig/conf.d does not exist... creating..."
	cp fontConf.d "$HOME/.config/fontconfig/conf.d"
	echo "$HOME/.config/fontconfig/conf.d created..."
	cd
	fc-cache -vf
fi
