FROM golang:alpine

ADD ./src /go/src/app

WORKDIR /go/src/app

ENV PORT=3001

RUN go mod download
RUN go build ./memory-inflation.go
