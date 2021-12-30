#!/usr/bin/env bash
DIR="$(dirname "$(realpath "$0")")"

kind create cluster --config ${DIR}/kind-cluster-config.yaml