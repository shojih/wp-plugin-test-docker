#!/bin/sh

# WordPress 最新の展開
if [ ! -e ./wordpress ]; then
  curl -O https://ja.wordpress.org/latest-ja.zip
  unzip latest-ja.zip
  rm latest-ja.zip
  cp wp-config.php wordpress/.
fi
docker compose build
docker compose run wordpress /bin/sh init_wp.sh

