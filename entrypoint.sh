#!/bin/bash
# スクリプトの実行中にエラーが発生した場合、それ以降の処理を中断する
set -e
# 既存のrails serverのpidファイルを削除する
rm -f /myapp/tmp/pids/server.pid
# コンテナのメインプロセス（CMD）を実行する
exec "$@"