# bbs 構築手順

http://サーバーのアドレス/bbs.php

1.GitHub リポジトリをクローンする

```
git clone git@github.com:ats223/bbs.git
cd bbs
```

2.Docker コンテナをビルドし、Docker Composeで起動する

```
sudo mkdir -p /usr/local/lib/docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

docker compose build

docker compose up
```

3.Docker コンテナ内で MYSQL に接続する

```
docker compose exec mysql mysql techc
```

4.テーブルを作成する

```
CREATE TABLE `bbs_entries` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `body` TEXT NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

以上
