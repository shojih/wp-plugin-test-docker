# WordPress+WP-CLI+WP-Plugin Test Docker Template
# 構成
* アプリケーションサーバー:WordPressコンテナ
* DBサーバー:mysqlコンテナ
# 使い方
## 初回起動方法
```
$ git clone https://github.com/shojih/wp-plugin-test-docker.git
$ cd wp-plugin-test-docker
$ sh ./build.sh
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
wordpress/wp-content
```
$ docker-compose exec wordpress bash
root@wordpress:/var/www/html# sudo /bin/sh plugin_install.sh
