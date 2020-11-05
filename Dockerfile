FROM ubuntu:19.04
FROM golang:1.13.4 as builder
ENV IP=0.0.0.0
ENV PORT=8000
ENV POSTGRES_URL=0.0.0.0
ENV POSTGRES_PASSWORD=1234qwerty
EXPOSE 8000
COPY app.go .
RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
RUN go build -o a.out
CMD ./a.out

