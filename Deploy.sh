#!/bin/sh
ls -lrth
kubectl apply -f namespace.yaml --validate=false
