#!/usr/bin/env bash
DIR="$(dirname "$(realpath "$0")")"

echo "Creating metallb namespace"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.11.0/manifests/namespace.yaml

echo "Deploying metallb components"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.11.0/manifests/metallb.yaml

echo "Generating metallb secret"
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

# echo "Applying MetalLB config"
# kubectl apply -f ${DIR}/metal-lb-config.yaml