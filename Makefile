CMDDIR="./cmd/"

# new-cluster:
# 	${BLOWITUP}new-kind-cluster.sh
#
# up:
# 	${BLOWITUP}up.sh
#
# down:
# 	${BLOWITUP}down.sh
#
delete:
	kubectl delete pod memory-overuse-pod
	kubectl delete service memory-overuse-pod

dev:
	docker build ./deploy -t quay.io/asmacdo/memory-inflation-image:0.0.0
	docker push quay.io/asmacdo/memory-inflation-image:0.0.0
	# make pod
	
pod:
	kubectl create -f deploy/memory-inflation-pod.yaml
	kubectl expose pod memory-overuse-pod

forward:
	kubectl port-forward memory-overuse-pod 3001:3001

trigger:
	curl localhost:3001/blowup
