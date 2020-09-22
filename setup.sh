
#!/bin/bash
set -ex

[ -d /data/node ] || ckb init -c $NETWORK -C /data/node

sed -i s/@NGINX_READ_TIMEOUT/$NGINX_READ_TIMEOUT/ /conf/nginx.conf
sed -i s/@NETWORK/$NETWORK/ /config.yaml
