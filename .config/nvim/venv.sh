#!/usr/bin/env bash

# Declare a base path for both virtual environments
venv="${XDG_CACHE_HOME:-$HOME/.cache}/vim/venv"

# Try to detect virtualenv's executable names
[[ -x $(command -v virtualenv2) ]] && vrenv2=virtualenv2
[[ -x $(command -v virtualenv3) ]] && vrenv2=virtualenv3
[[ -x $(command -v virtualenv-2.7) ]] && vrenv2=virtualenv-2.7
[[ -x $(command -v virtualenv-3.5) ]] && vrenv2=virtualenv-3.5

# Ensure python 2/3 virtual environments
[ -d "$venv" ] || mkdir -p "$venv"
# Check if conda is installed
if [[ -x $(command -v conda) ]]; then
  [ -d "$venv/neovim2" ] || conda env create -p "$venv/neovim2" -f environment2.yml
  [ -d "$venv/neovim3" ] || conda env create -p "$venv/neovim3" -f environment3.yml
else
  [ -d "$venv/neovim2" ] || $vrenv2 "$venv/neovim2"
  [ -d "$venv/neovim3" ] || $vrenv3 "$venv/neovim3"
  # Install or upgrade dependencies
  echo 'PYTHON 2'
  "$venv/neovim2/bin/pip" install -U neovim PyYAML
  echo 'PYTHON 3'
  "$venv/neovim3/bin/pip" install -U neovim PyYAML
fi
