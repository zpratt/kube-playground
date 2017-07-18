# Zach's Kubernetes Playground

This is nothing but a hack for me to learn with. Do not expect to find production quality solutions in here.

## Running locally

When running the first time, you need to install dependencies with `./scripts/prerequisites.sh`

1. `./scripts/start-minikube.sh`
2. `./scripts/build.sh`
3. `./scripts/deploy.sh`
4. `curl -v "$(minikube service kube-node --url)/api"`
