#!/bin/sh

ATOM_CONFIG_DIR="$HOME/.atom"

# install atom
brew cask install atom

# install esential packadges
apm install highlight-selected language-slim linter linter-ruby language-elixir advanced-open-file

# install configuration
curl --silent --show-error --fail --location \
    'https://raw.githubusercontent.com/fs/atom-bootstrap/master/config.cson' \
    --output "${ATOM_CONFIG_DIR}/config.cson"
