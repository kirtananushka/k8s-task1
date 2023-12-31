#!/bin/bash
# Deletes all manifests

manifests=(
  "resource-svc-deployment.yaml"
  "resource-svc-service.yaml"
  "postgres-statefulset.yaml"
  "song-svc-deployment.yaml"
  "song-svc-service.yaml"
  "postgres-service.yaml"
  "config-map.yaml"
  "db-secret.yaml"
  "namespace.yaml"
)

for manifest in "${manifests[@]}"; do
  echo "Deleting $manifest..."
  kubectl delete -f "../resources/$manifest"
done

echo
echo "All manifests have been deleted."
echo
kubectl get pods -n=ktask