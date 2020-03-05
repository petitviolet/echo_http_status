build:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build main.go
	docker build -t petitviolet/echo_status_code:latest .

run: build
	docker run -d --name echo_status_code -p "8080:8080" petitviolet/echo_status_code:latest

