FROM golang:latest as builder

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

WORKDIR /build
COPY main.go /build
RUN go build main.go

FROM alpine:latest

WORKDIR /app
COPY --from=builder /build/main /app

EXPOSE 8080

CMD ["./main"]
