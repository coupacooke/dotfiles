#!/bin/sh

# TODO: install Aptana

# make aptana our default editor for gem-open
cat >>$HOME/.zshrc <<EOF
export PATH="$HOME/aptana3:\$PATH"
export GEM_EDITOR="studio3"
EOF
