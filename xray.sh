#!/bin/sh
if [ ! -f UUID ]; then
  UUID="91348c9b-a32f-4038-a5b4-82d26bf57649"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

