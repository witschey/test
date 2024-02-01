#!/bin/sh
kubectl apply -f namespace.yaml --validate=false
kubectl apply -f secret.yaml --validate=false
kubectl apply -f deployment.yaml --validate=false
kubectl apply -f service.yaml --validate=false
