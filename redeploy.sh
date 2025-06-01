#!/bin/bash

# Redeploy script for extracted configurations
echo "🚀 Redeploying extracted configurations..."

# Apply ConfigMaps first
echo "📦 Applying ConfigMaps..."
for cm in configmaps/*.yaml; do
    if [ -f "$cm" ]; then
        echo "  Applying: $cm"
        kubectl apply -f "$cm"
    fi
done

# Apply Services
echo "🌐 Applying Services..."
for svc in services/*.yaml; do
    if [ -f "$svc" ]; then
        echo "  Applying: $svc"
        kubectl apply -f "$svc"
    fi
done

# Apply Deployments
echo "🚀 Applying Deployments..."
for deploy in deployments/*.yaml; do
    if [ -f "$deploy" ]; then
        echo "  Applying: $deploy"
        kubectl apply -f "$deploy"
    fi
done

echo "✅ Redeployment complete!"
echo "Check status with: kubectl get pods"
