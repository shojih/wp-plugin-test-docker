#!/bin/sh

# WordPressの展開
if [ ! -e ./wordpress ]; then
#  curl -O https://ja.wordpress.org/latest-ja.zip
  curl -O https://ja.wordpress.org/wordpress-6.1.1-ja.zip
  unzip wordpress-6.1.1-ja.zip
  rm wordpress-6.1.1-ja.zip
  cp wp-config.php wordpress/.
fi
docker compose build
docker compose run wordpress /bin/sh init_wp.sh

