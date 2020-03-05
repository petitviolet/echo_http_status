FROM alpine:latest

WORKDIR /app
COPY main /app

EXPOSE 8080

CMD ["./main"]
