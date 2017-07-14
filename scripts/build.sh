#!/bin/bash

set -e
eval $(minikube docker-env)
docker build -t kube-playground:v0.0.5 .
