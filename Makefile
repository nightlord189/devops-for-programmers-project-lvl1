prod_tag = nightlord189/devops-for-programmers-project-lvl1:latest

docker-build:
	docker build -t app1 f Dockerfile .

docker-run:
	docker run -p 8080:8080 app1

docker-build-prod:
	docker build -t $(prod_tag) -f Dockerfile.production .

docker-run-prod:
	docker run -p 8080:8080 $(prod_tag)

docker-push:
	docker push $(prod_tag)

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	docker-compose up