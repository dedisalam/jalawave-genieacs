all:
	docker image rm dedisalam/jalawave-genieacs || true
	docker build -t dedisalam/jalawave-genieacs .
	docker push dedisalam/jalawave-genieacs
	docker compose up -d