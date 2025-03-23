all:
	rm -rf ./dist
	rm -rf ./node_modules
	npm install
	npm run build
	docker image rm dedisalam/jalawave-genieacs || true
	docker build -t dedisalam/jalawave-genieacs .
	docker push dedisalam/jalawave-genieacs
	docker image rm dedisalam/jalawave-genieacs