
docker-build:
	docker build -t local-summary -f Dockerfile ./

docker-service-build:
	docker build -t summary-service -f Dockerfile.service ./

docker-service-run:
	docker run --rm -it -p 8080:8080 summary-service:latest

docker-run-test:
	docker run --rm local-summary:latest bash -i -c "pytest"
