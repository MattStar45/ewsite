#!/bin/sh
cd /tmp
curl -s https://api.github.com/repos/ewpm/ew/releases/latest \
| grep "ew" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -i -
chmod +x ew
mv -v ew /usr/bin