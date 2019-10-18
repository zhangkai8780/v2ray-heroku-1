#!/bin/sh

cd /root/v2ray-v$VER-linux-64

echo -e -n "$CONFIG_JSON1" >  config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

exec ./v2ray -config config.json

