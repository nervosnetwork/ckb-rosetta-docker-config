
#!/bin/bash
set -ex

[ -d /data/node ] || ckb init -c $NETWORK -C /data/node

if [ "$NGINX_READ_TIMEOUT" != "60" ]; then
  sed -i s/@NGINX_READ_TIMEOUT/$NGINX_READ_TIMEOUT/ /conf/nginx.conf
fi
