TAG?=master-478c97d
USERNAME=userb

build:
	docker build -t $(USERNAME)/kube-metrics-adapter:$(TAG) . -f Dockerfile

push:
	docker tag $(USERNAME)/kube-metrics-adapter:$(TAG) quay.io/$(USERNAME)/kube-metrics-adapter:$(TAG)
	docker push quay.io/$(USERNAME)/kube-metrics-adapter:$(TAG)

