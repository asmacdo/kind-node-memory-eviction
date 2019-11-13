BLOWITUP="./blowitup/cmd/"

delete-cluster:
	${BLOWITUP}delete-kind-cluster.sh

new-cluster:
	${BLOWITUP}new-kind-cluster.sh

up:
	${BLOWITUP}up.sh

down:
	${BLOWITUP}down.sh

trigger:
	${BLOWITUP}trigger.sh
tabs:
	${BLOWITUP}tabs.sh
