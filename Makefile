default: build

build:
	@docker build -t ez-ipupdate .

publish: build
	@docker tag ez-ipupdate knetic/ez-ipupdate
	@docker push knetic/ez-ipupdate