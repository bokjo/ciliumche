#!/usr/bin/env bash
DIR="$(dirname "$(realpath "$0")")"

kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/microservices-demo/master/release/kubernetes-manifests.yaml