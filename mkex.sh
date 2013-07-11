#!/bin/bash
shebang="#!/usr/bin/env ruby"
filename="./ex$1.rb"

# create the file with a shebang if it doesnt exist
if [ ! -e $filename ]; then
	echo -e "$shebang\n" > $filename
fi

# make file executable
chmod +x $filename

