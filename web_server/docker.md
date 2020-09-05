docker --help
docker ps - コンテナの一覧を表示。
docker logs - コンテナの標準出力を表示。
docker stop - 実行中のコンテナを停止。
docker images ローカルのホスト上にあるイメージの一覧を表示しましょう。
docker-compose build  --no-cache frontend
docker-compose up frontend
docker-compose help up
docker images
docker image rm dffa07c1aaf3
docker container ls
docker container rm f20b624756b0
docker rmi training/sinatra  イメージも削除できます。
docker rm nostalgic_morse コンテナの削除
docker search sinatra
docker pull training/sinatra
docker run -t -i training/sinatra /bin/bash

docker ps -a
docker rm name_of_the_docker_container


https://hub.docker.com/editions/community/docker-ce-desktop-mac
docker-compose build --no-cache hdf
docker-compose down --rmi all

docker-compose exec hdb bundle exec rails db:setup
docker-compose exec hdb bundle exec rails db:seed
docker-compose exec hdb bundle exec rails c


docker-compose
  Define and run multi-container applications with Docker.
Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information
