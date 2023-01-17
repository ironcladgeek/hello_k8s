.PHONY: run_website stop_website create_kind_cluster create_docker_registry

run_website:
	docker build -t explorecalifornia.com . && \
	 docker run --rm --name explorecalifornia.com -p 5000:80 -d explorecalifornia.com

stop_website:
	docker stop explorecalifornia.com

create_kind_cluster:
	kind create cluster --name explorecalifornia.com &&
	 kubectl get nodes

create_docker_registry:
	if docker ps | grep -q 'local-registry'; \
	then echo "---> local-registry already created; skipping"; \
	else docker run --name local-registry -d --restart=always -p 5000:5000 registry:2; \
	fi