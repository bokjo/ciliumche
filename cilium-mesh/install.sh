#!/usr/bin/env bash
DIR="$(dirname "$(realpath "$0")")"

echo "Install Cilium compatible with service mesh functionality"
cilium install --version -service-mesh:v1.11.0-beta.1 --config enable-envoy-config=true --kube-proxy-replacement=probe