open --background -a Docker

docker info

docker-compose build

docker-compose up

docker-compose down

docker-compose up --build

http://localhost:8080/api/data


curl http://localhost:8080/api/data

curl -X GET http://localhost:8080/api/data/1

curl -X POST http://localhost:8080/api/data -H "Content-Type: application/json" -d '{"name":"Alice"}'

curl -X DELETE http://localhost:8080/api/data/1

curl -X PUT http://localhost:8080/api/data/1 -H "Content-Type: application/json" -d '{"name":"Updated Name"}'
