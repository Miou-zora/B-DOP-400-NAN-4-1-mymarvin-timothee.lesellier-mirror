if [[ "$(docker images -q mymarvin-dependencies:latest 2> /dev/null)" == "" ]]; then
    docker build -t mymarvin-dependencies -f dockerfiles/dependencies.Dockerfile .
fi
docker build -t mymarvin-main -f dockerfiles/main.Dockerfile .
docker run --rm -p 8080:8080 mymarvin-main
