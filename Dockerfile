FROM kulina/alpine-golang
MAINTAINER Arseto Nugroho <seto@kulina.id> (@satriyo796)

RUN apk update && apk add git && \
    rm -rf /var/cache/apk/*
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
EXPOSE 8080
