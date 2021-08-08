docker-run:
	docker run -p 8080:8080 app1

docker-build:
	docker build -t app1 .

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	docker-compose up