FROM alpine:3.7

RUN mkdir -p "/home/bleve_explorer/" && mkdir -p "/home/bleve_explorer/data"

ENV GOROOT="/home/bleve_explorer/"


RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY . /home/bleve_explorer/
RUN chmod +x /home/bleve_explorer/bleve-explorer
WORKDIR /home/bleve_explorer
ENTRYPOINT ["/home/bleve_explorer/bleve-explorer"]
EXPOSE 8095