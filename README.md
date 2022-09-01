# bbs 構築手順

http://サーバーのアドレス/bbs.php



1.GitHubリポジトリをクローンする
```
git clone git@github.com:ats223/bbs.git
```


2.Dockerコンテナをビルドし、起動する
```
docker compose build
docker compose up
```

3.Dockerコンテナ内でMYSQLに接続する
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

