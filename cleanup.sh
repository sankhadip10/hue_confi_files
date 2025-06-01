#!/bin/bash

# Cleanup script - removes all deployed resources
echo "🧹 Cleaning up all resources..."

# Delete deployments
kubectl delete deployments --all

# Delete services (except kubernetes)
kubectl delete services --all --ignore-not-found=true
kubectl apply -f - <<< "
apiVersion: v1
kind: Service
metadata:
  name: kubernetes
spec:
  ports:
  - port: 443
    protocol: TCP
    targetPort: 6443
  selector:
    component: apiserver
    provider: kubernetes
"

# Delete configmaps
kubectl delete configmaps --all

echo "✅ Cleanup complete!"
