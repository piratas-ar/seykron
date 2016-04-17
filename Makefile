build:
	npm install && npm run build

deploy:
	./bin/deploy.sh

.PHONY: build deploy
