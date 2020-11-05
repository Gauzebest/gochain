FROM ubuntu:19.04
FROM golang:1.13.4 as builder
ENV PORT=8000
EXPOSE 8000
COPY app.go .
RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
RUN go build -o a.out
CMD ./a.out

