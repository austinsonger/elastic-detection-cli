#!/bin/bash

## Tag all the images with a datestamp
## and push them to dockerhub.

datestamp=$(date +%Y%m%d)

for i in $(grep '^    image:' docker-compose.yaml | cut -c12-)
do
	echo
	echo "======= $i ======="
	basename=$(echo $i | cut -d: -f1)
	docker tag $basename $basename:$datestamp
	docker push $i
	docker push $basename:$datestamp
done
