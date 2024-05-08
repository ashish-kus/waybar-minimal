#!/bin/bash

pkgmgr="pacman"
hash paru 2>/dev/null && pkgmgr="paru"
hash yay 2>/dev/null && pkgmgr="yay"

IFS=$'\n'$'\r'

updatesli=($($pkgmgr -Qu))
text=${#updatesli[@]}
icon=""
[ $text -eq 0 ] && icon="" || icon="📦"

for i in ${updatesli[@]}
do
  tooltip+="$i\n"
done

cat << EOF
{ "text":"$icon", "tooltip":"UPDATES:  $text"}  
EOF

