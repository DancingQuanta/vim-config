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
  # Conda is windows on cygwin so use windows paths
  if [[ $OSTYPE == "cygwin" ]]; then
    venv_path="$(cygpath -aw "$venv")"
  else
    venv_path="$venv"
  fi

  echo 'PYTHON 2'
  if [ -d "$venv/neovim2" ]; then
    echo 'Updating Python 2 env for vim'
    conda env update -p "$venv_path/neovim2" -f environment2.yml
  else
    echo 'Generating Python 2 env for vim'
    conda env create -p "$venv_path/neovim2" -f environment2.yml
  fi
  if [ -d "$venv/neovim3" ]; then
    echo 'Updating Python 3 env for vim'
    conda env update -p "$venv_path/neovim3" -f environment3.yml
  else
    echo 'Generating Python 3 env for vim'
    conda env create -p "$venv_path/neovim3" -f environment3.yml
  fi
else
  [ -d "$venv/neovim2" ] || $vrenv2 "$venv/neovim2"
  [ -d "$venv/neovim3" ] || $vrenv3 "$venv/neovim3"
  # Install or upgrade dependencies
  echo 'PYTHON 2'
  "$venv/neovim2/bin/pip" install -U neovim PyYAML
  echo 'PYTHON 3'
  "$venv/neovim3/bin/pip" install -U neovim PyYAML
fi
