all:
	docker image rm dedisalam/genieacs || true
	docker build --no-cache -t dedisalam/genieacs .
	docker push dedisalam/genieacs