#!/bin/bash
dockerhub_user="superluowen"
project="ci_test"
version="1.3"


# update .github/workflows/docker.yml 
awk -v version=$version -v dockerhub_user=$dockerhub_user -v project=$project '{gsub(/{DOCKERHUBUSER}/, dockerhub_user);gsub(/{PROJECT}/, project); gsub(/{VERSION}/, version); print}' .github/workflows/docker.yml.bak > temp && mv temp .github/workflows/docker.yml
# update Dockerfile
awk -v project=$project '{gsub(/{PROJECT}/, project); print}' Dockerfile.bak > temp && mv temp Dockerfile