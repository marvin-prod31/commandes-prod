#!/bin/sh
# Donne un numéro de version à chaque mise en ligne (utilisé par la mise à jour automatique).
v=$(date -u +%Y%m%d%H%M%S)
sed -i "s/const VERSION = \"[^\"]*\";/const VERSION = \"$v\";/; s/config.js?v=[^\"]*\"/config.js?v=$v\"/" index.html
printf '{"version":"%s"}\n' "$v" > version.json
echo "$v"
