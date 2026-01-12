#!/bin/bash

# Validation script for Question 27

set -e

echo "Validating Question 27..."
echo ""

# Check if kubectl is available
if ! command -v kubectl &> /dev/null; then
    echo "kubectl not found"
    exit 1
fi

echo "✓ Validation script ready"
echo ""
echo "To validate your solution:"
echo "1. Ensure all resources are created"
echo "2. Check with: kubectl get <resource>"
echo "3. Verify with: kubectl describe <resource> <name>"
