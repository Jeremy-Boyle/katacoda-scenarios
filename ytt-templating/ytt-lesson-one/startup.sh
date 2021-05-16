#!/bin/bash
cat << EOF > /root/setup.sh
#!/bin/bash

show_progress()
{
  local -r pid="${1}"
  local spinstr='\|/-'
  local temp
  printf "    \b\b\b\b"
  echo ""
  echo -n "Configuring"
  while true; do
    if [[ ! -f /root/finshed ]]; then
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "1"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Done!"
}

show_progress
EOF
chmod +x setup.sh
clear
./setup.sh