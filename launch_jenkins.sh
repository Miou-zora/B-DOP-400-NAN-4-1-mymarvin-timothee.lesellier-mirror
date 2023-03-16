if [[ "$(docker images -q mymarvin:latest 2> /dev/null)" == "" ]]; then
  docker build tests -t mymarvin
fi
docker compose up --no-log-prefix
