#!/bin/bash

outfile="./assets/aurora_corne.svg"
mkdir -p ./assets

keymap parse -c 6 -z ./config/splitkb_aurora_corne.keymap | keymap draw  - > $outfile

if [[ $1 == "--open" ]]; then
	if [[ $OSTYPE == "darwin"* ]]; then
		open -g $outfile
	elif [[ $OSTYPE == "linux-gnu"* ]]; then
		xdg-open $outfile
	else
		echo "Unsupported OS"
	fi
fi
