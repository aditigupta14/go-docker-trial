# syntax=docker/dockerfile:1

FROM golang:1.19.1

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /root

EXPOSE 8080

CMD [ "/root/docker-trial" ]
