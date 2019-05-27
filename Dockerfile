FROM golang:1.12.5-stretch AS builder

WORKDIR /go/src/github.com/alextanhongpin/go-server
COPY main.go . 
RUN CGO_ENABLED=0 GOOS=linux go build -a -o app .

FROM alpine:3.8
RUN apk --no-cache add ca-certificates
COPY --from=builder /go/src/github.com/alextanhongpin/go-server/app .
EXPOSE 8080
CMD ["./app"]
