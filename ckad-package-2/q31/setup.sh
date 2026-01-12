#!/bin/bash

# Setup script for Question 31

set -e

echo "Setting up Question 31..."
echo ""

# Check if kubectl is available
if ! command -v kubectl &> /dev/null; then
    echo "kubectl not found. Please install kubectl first."
    exit 1
fi

echo "✓ kubectl is available"
echo ""
echo "Ready to start the exercise!"
echo ""
echo "Next steps:"
echo "1. Read EXERCISE.md"
echo "2. Create your solution"
echo "3. Apply with: kubectl apply -f your-solution.yaml"
echo "4. Validate with: ./validate.sh"
