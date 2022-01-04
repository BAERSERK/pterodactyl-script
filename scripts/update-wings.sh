#!/bin/bash
set -e

output "${BLUE}Updating Wings..."

curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
chmod u+x /usr/local/bin/wings

systemctl restart wings

output
output "${GREEN}Wings has been successfully updated."
output