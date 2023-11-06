# ORF-test1 うさぎ用介護施設ホームページ制作　テスト1
とりあえずデプロイするためのテスト
## 各種使用バージョン ※latestではなくバージョンは明記すること
1. PostgresQL(Docler) -16.0 (採用時最新 2023/11/07)
2. node.js(Docker) -20.9.0 (採用時LTS版最新 2023/11/07)
3. ruby(Docker) -3.2.2 (推奨バージョンの内最新 [この記事を参照](https://www.fastruby.io/blog/ruby/rails/versions/compatibility-table.html))
## 問題点を記述（レベル３見出し 日付必須）

## 開発中に見つけた注意点をなるべく記述
### git initを実行するディレクトリをプロジェクト本体のホームディレクトリだけにする
rails newコマンド実行時にアプリケーションのディレクトリで同時にgit initが実行される。docker-composeを用いて複数コンテナで一つのプロジェクトを成し、そのソースコードをディレクトリを分け管理している都合上、railsプロジェクトはホームディレクトリ一層下(railsApp)に作成した。そのため、git initをスキップするために、```rails new railsApp --skip-git```とオプションを追加すること。