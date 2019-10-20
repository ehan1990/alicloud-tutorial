CONTAINER_NAME=nginx-alpine-tutorial

# replace IMAGE_NAME with your docker registry
# e.g. registry-intl.cn-hangzhou.aliyuncs.com/${NAMESPACE}/nginx-alpine-tutorial
IMAGE_NAME=registry-intl.cn-hangzhou.aliyuncs.com/${NAMESPACE}/nginx-alpine-tutorial

build-image:
	docker build -f Dockerfile -t ${IMAGE_NAME} .

run-local:
	docker run --name ${CONTAINER_NAME} --rm -p 8080:80 ${IMAGE_NAME}

ssh-local:
	docker exec -it ${CONTAINER_NAME} /bin/bash

