FROM kulina/alpine-golang
MAINTAINER Arseto Nugroho <seto@kulina.id> (@satriyo796)

RUN apk update && apk add git && apk add g++ && apk add bzr && \
    rm -rf /var/cache/apk/*
RUN go get github.com/astaxie/beego && \
 go get github.com/beego/bee && \
 go get github.com/mattn/go-sqlite3 && \
 go get launchpad.net/goamz/aws && \
 go get launchpad.net/goamz/s3 
EXPOSE 8080
