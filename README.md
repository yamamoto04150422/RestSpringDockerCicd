# Dockerをバックグラウンドで起動する
open --background -a Docker

# Dockerのシステム情報を表示する
docker info

# Dockerコンテナをビルドしつつ起動する
docker-compose up --build

# Dockerコンテナを停止して削除する
docker-compose down

# APIエンドポイントにGETリクエストを送信する
curl http://localhost:8080/api/data

# APIエンドポイントにPOSTリクエストを送信する（JSONデータを含む）
curl -X POST http://localhost:8080/api/data -H "Content-Type: application/json" -d '{"name":"Alice"}'

# APIエンドポイントにGETリクエストを送信してIDが1のデータを取得する
curl -X GET http://localhost:8080/api/data/1

# APIエンドポイントにDELETEリクエストを送信してIDが1のデータを削除する
curl -X DELETE http://localhost:8080/api/data/1

# APIエンドポイントにPUTリクエストを送信してIDが1のデータを更新する（JSONデータを含む）
curl -X PUT http://localhost:8080/api/data/1 -H "Content-Type: application/json" -d '{"name":"Updated Name"}'

# コンテナIDを取得してコンテナに入る方法
docker exec -it $(docker ps -qf "name=java-docker-app") /bin/bash

# Mavenを使用してテストを実行する
mvn test

# コンテナから出る
exit
