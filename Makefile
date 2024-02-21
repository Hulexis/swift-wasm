.PHONY: build-carton
build-carton:
	@docker image build --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) -t carton .

.PHONY: dev
dev:
	@docker run -it -p 8080:8080 --mount type=bind,source=$(shell pwd),target=/home/www-data -w /home/www-data carton:latest carton dev --host 0.0.0.0
