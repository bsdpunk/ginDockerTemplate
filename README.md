#Easy To Start Gin Page


    3  cd /app
    4  go mod tidy
    5  go build main.go
    6  ./main 

sudo docker run --privileged --mount type=bind,source=/home/dusty/docker/ginDockerTemplate/app,target=/app -p 8080:8080 -it gogin
