#!/bin/bash

show_progress()
{
  echo -n "Setting up"
  local -r pid="${1}"
  local spinstr='\|/-'
  local temp
  while true; do
    if [[ ! -f "/tmp/finished"]]; then
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep ".75"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Configured"
}

show_progress