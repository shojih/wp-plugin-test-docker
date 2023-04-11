# WordPress+WP-CLI+WP-Plugin Test Docker Template
# 構成
* アプリケーションサーバー:WordPressコンテナ
* DBサーバー:mysqlコンテナ
# 使い方
## 初回起動方法
```
$ git clone https://github.com/shojih/wp-plugin-test-docker.git
$ cd wp-plugin-test-docker
$ sh ./build.sh  or sh ./build611.sh
$ docker compose up
```
## サイトへのアクセス
```
http://localhost:8000
```
## 管理画面へのアクセス
```
http://localhost:8000/wp-admin/
```
### 初期ログイン情報
ユーザー： admin  
パスワード: admin1  
## 2回目以降の起動方法
```
$ docker-compose up
```
## 停止方法
```
$ docker-compose down
```
## Plugin Install
```
$ docker-compose exec wordpress bash
root@wordpress:/var/www/html# sudo /bin/sh plugin_install.sh
```
## Plugin の状況確認
```
$ docker-compose exec wordpress bash
root@wordpress:/var/www/html# wp plugin lsit --arrow-root
```
## Plugin Uninstall
```
$ docker-compose exec wordpress bash
root@wordpress:/var/www/html# sudo /bin/sh plugin_uninstall.sh
```
