build:
	docker build -t petitviolet/echo_http_status:latest .

run:
	docker run -d --name echo_http_status -p "8080:8080" petitviolet/echo_http_status:latest

