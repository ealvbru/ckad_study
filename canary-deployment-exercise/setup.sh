#!/bin/bash

# Script de Setup para Exercício de Canary Deployment
# Este script prepara o ambiente Kubernetes para o exercício

set -e

echo "=========================================="
echo "Canary Deployment Exercise - Setup"
echo "=========================================="
echo ""

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verificar se kubectl está disponível
if ! command -v kubectl &> /dev/null; then
    echo -e "${YELLOW}⚠️  kubectl não encontrado. Por favor, instale kubectl primeiro.${NC}"
    exit 1
fi

echo -e "${BLUE}1. Criando namespace goshawk...${NC}"
kubectl apply -f goshawk-namespace.yaml
echo -e "${GREEN}✓ Namespace criado${NC}"
echo ""

echo -e "${BLUE}2. Criando Service krill-service...${NC}"
kubectl apply -f krill-service.yaml
echo -e "${GREEN}✓ Service criado${NC}"
echo ""

echo -e "${BLUE}3. Criando Deployment atual (current-krill-deployment)...${NC}"
kubectl apply -f current-krill-deployment.yaml
echo -e "${GREEN}✓ Deployment criado${NC}"
echo ""

echo -e "${BLUE}4. Aguardando pods ficarem prontos...${NC}"
kubectl wait --for=condition=ready pod -l app=krill-service,version=stable -n goshawk --timeout=300s 2>/dev/null || true
echo -e "${GREEN}✓ Pods prontos${NC}"
echo ""

echo "=========================================="
echo -e "${GREEN}Setup concluído!${NC}"
echo "=========================================="
echo ""
echo "Estado atual:"
echo ""
kubectl get pods -n goshawk
echo ""
echo "=========================================="
echo "Próximos passos:"
echo "=========================================="
echo ""
echo "1. Leia o arquivo EXERCISE.md para entender a tarefa"
echo "2. Crie o arquivo canary-krill-deployment.yaml"
echo "3. Aplique com: kubectl apply -f canary-krill-deployment.yaml"
echo "4. Verifique com: kubectl get pods -n goshawk"
echo ""
