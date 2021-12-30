#!/usr/bin/env bash
DIR="$(dirname "$(realpath "$0")")"

kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.11/samples/bookinfo/platform/kube/bookinfo.yaml