all:
	docker image rm dedisalam/jalawave-genieacs || true
	docker build --no-cache -t dedisalam/jalawave-genieacs .
	docker push dedisalam/jalawave-genieacs