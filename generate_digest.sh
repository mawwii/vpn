#!/bin/bash
prefix="release/"
release_files=(
  "${prefix}MAWWII VPN.msi"
  "${prefix}MAWWII VPN.apk"
  "${prefix}MAWWII VPN.dmg"
)


for file in "${release_files[@]}"; do
  digest=$(openssl md5 "$file" | cut -d '=' -f2 | cut -d ' ' -f2)
  echo "$file: $digest"
  echo $digest > "$file.md5.checksum"
done


