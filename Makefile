build:
	docker build -t petitviolet/echo_status_code:latest .

run:
	docker run -d --name echo_status_code -p "8080:8080" petitviolet/echo_status_code:latest

