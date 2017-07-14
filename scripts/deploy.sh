#!/bin/bash

set -e
eval $(minikube docker-env)

function deleteDeployment {
    kubectl delete service kube-node
    kubectl delete deployment kube-node
}

function applyDeploymentAndExpose {
    kubectl apply -f k8s/deployment.yml
    kubectl apply -f k8s/service.yml
}

applyDeploymentAndExpose
