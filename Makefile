PROJECT=app-template
IMAGE_REPOSITORY=

#composer
COMPOSER_IMAGE=$(IMAGE_REPOSITORY)/$(PROJECT)-composer:latest

build-image:
	@docker buildx build --platform linux/amd64 --no-cache -f ./etc/$(image)/Dockerfile -t $(IMAGE_REPOSITORY)/$(PROJECT)-$(image):$(version) .

composer:
	@docker run --rm --workdir /app --platform linux/amd64 --volume $$PWD/app:/app $(COMPOSER_IMAGE) $(x)

push-image:
	@cd etc/$(image);
	@echo $(shell pwd);
	@docker push $(IMAGE_REPOSITORY)/$(PROJECT)-$(image):$(version);