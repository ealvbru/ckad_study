#!/bin/bash

# Script de Validação para Exercício de Canary Deployment
# Este script verifica se sua solução está correta

set -e

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

NAMESPACE="goshawk"
STABLE_DEPLOYMENT="current-krill-deployment"
CANARY_DEPLOYMENT="canary-krill-deployment"
SERVICE_NAME="krill-service"

# Contadores
PASSED=0
FAILED=0

# Função para imprimir resultado
check_result() {
    local test_name=$1
    local result=$2
    
    if [ $result -eq 0 ]; then
        echo -e "${GREEN}✓ PASSOU${NC}: $test_name"
        ((PASSED++))
    else
        echo -e "${RED}✗ FALHOU${NC}: $test_name"
        ((FAILED++))
    fi
}

echo "=========================================="
echo "Canary Deployment - Validação de Solução"
echo "=========================================="
echo ""

# Verificar se kubectl está disponível
if ! command -v kubectl &> /dev/null; then
    echo -e "${RED}✗ kubectl não encontrado${NC}"
    exit 1
fi

# Teste 1: Namespace existe
echo -e "${BLUE}Teste 1: Verificando namespace...${NC}"
kubectl get namespace $NAMESPACE &> /dev/null
check_result "Namespace '$NAMESPACE' existe" $?
echo ""

# Teste 2: Service existe
echo -e "${BLUE}Teste 2: Verificando Service...${NC}"
kubectl get service $SERVICE_NAME -n $NAMESPACE &> /dev/null
check_result "Service '$SERVICE_NAME' existe" $?
echo ""

# Teste 3: Deployment estável existe
echo -e "${BLUE}Teste 3: Verificando Deployment estável...${NC}"
kubectl get deployment $STABLE_DEPLOYMENT -n $NAMESPACE &> /dev/null
check_result "Deployment '$STABLE_DEPLOYMENT' existe" $?
echo ""

# Teste 4: Deployment canary existe
echo -e "${BLUE}Teste 4: Verificando Deployment canary...${NC}"
kubectl get deployment $CANARY_DEPLOYMENT -n $NAMESPACE &> /dev/null
CANARY_EXISTS=$?
check_result "Deployment '$CANARY_DEPLOYMENT' existe" $CANARY_EXISTS

if [ $CANARY_EXISTS -ne 0 ]; then
    echo ""
    echo -e "${YELLOW}⚠️  Deployment canary não encontrado. Criou o arquivo canary-krill-deployment.yaml?${NC}"
    echo ""
    exit 1
fi
echo ""

# Teste 5: Pods estáveis estão rodando
echo -e "${BLUE}Teste 5: Verificando pods estáveis...${NC}"
STABLE_PODS=$(kubectl get pods -n $NAMESPACE -l app=krill-service,version=stable --no-headers 2>/dev/null | wc -l)
echo "Pods estáveis encontrados: $STABLE_PODS"
if [ $STABLE_PODS -eq 5 ]; then
    check_result "5 pods estáveis estão rodando" 0
else
    check_result "5 pods estáveis estão rodando" 1
fi
echo ""

# Teste 6: Pods canary existem
echo -e "${BLUE}Teste 6: Verificando pods canary...${NC}"
CANARY_PODS=$(kubectl get pods -n $NAMESPACE -l app=krill-service,version=canary --no-headers 2>/dev/null | wc -l)
echo "Pods canary encontrados: $CANARY_PODS"
if [ $CANARY_PODS -gt 0 ]; then
    check_result "Pods canary estão rodando" 0
else
    check_result "Pods canary estão rodando" 1
fi
echo ""

# Teste 7: Total de pods não excede 10
echo -e "${BLUE}Teste 7: Verificando limite de pods...${NC}"
TOTAL_PODS=$((STABLE_PODS + CANARY_PODS))
echo "Total de pods: $TOTAL_PODS"
if [ $TOTAL_PODS -le 10 ]; then
    check_result "Total de pods (≤ 10)" 0
else
    check_result "Total de pods (≤ 10)" 1
fi
echo ""

# Teste 8: Distribuição de tráfego
echo -e "${BLUE}Teste 8: Verificando distribuição de tráfego...${NC}"
if [ $TOTAL_PODS -gt 0 ]; then
    CANARY_PERCENTAGE=$((CANARY_PODS * 100 / TOTAL_PODS))
    echo "Distribuição de tráfego canary: $CANARY_PERCENTAGE%"
    
    # Verificar se está próximo de 40% (entre 35% e 45%)
    if [ $CANARY_PERCENTAGE -ge 35 ] && [ $CANARY_PERCENTAGE -le 45 ]; then
        check_result "Distribuição de tráfego canary ≈ 40%" 0
    else
        check_result "Distribuição de tráfego canary ≈ 40%" 1
        echo -e "${YELLOW}  Esperado: ~40% (35-45%), Obtido: $CANARY_PERCENTAGE%${NC}"
    fi
else
    check_result "Distribuição de tráfego canary ≈ 40%" 1
fi
echo ""

# Teste 9: Service endpoints incluem pods canary
echo -e "${BLUE}Teste 9: Verificando Service endpoints...${NC}"
ENDPOINTS=$(kubectl get endpoints $SERVICE_NAME -n $NAMESPACE -o jsonpath='{.subsets[0].addresses[*].targetRef.name}' 2>/dev/null | wc -w)
echo "Endpoints do Service: $ENDPOINTS"
if [ $ENDPOINTS -eq $TOTAL_PODS ]; then
    check_result "Service roteia para todos os pods" 0
else
    check_result "Service roteia para todos os pods" 1
    echo -e "${YELLOW}  Esperado: $TOTAL_PODS endpoints, Obtido: $ENDPOINTS${NC}"
fi
echo ""

# Teste 10: Imagem canary é v2.0
echo -e "${BLUE}Teste 10: Verificando imagem canary...${NC}"
CANARY_IMAGE=$(kubectl get deployment $CANARY_DEPLOYMENT -n $NAMESPACE -o jsonpath='{.spec.template.spec.containers[0].image}' 2>/dev/null)
echo "Imagem canary: $CANARY_IMAGE"
if [[ $CANARY_IMAGE == *"v2.0"* ]]; then
    check_result "Imagem canary é v2.0" 0
else
    check_result "Imagem canary é v2.0" 1
fi
echo ""

# Resumo
echo "=========================================="
echo "Resumo da Validação"
echo "=========================================="
echo -e "${GREEN}Testes Aprovados: $PASSED${NC}"
echo -e "${RED}Testes Falhados: $FAILED${NC}"
echo ""

if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}🎉 Parabéns! Sua solução está correta!${NC}"
    echo ""
    echo "Próximos passos:"
    echo "1. Monitore o comportamento do canary"
    echo "2. Aumente gradualmente o tráfego para o canary"
    echo "3. Faça rollout completo quando estiver confiante"
    exit 0
else
    echo -e "${RED}❌ Sua solução tem alguns problemas. Verifique os testes que falharam.${NC}"
    echo ""
    echo "Dicas:"
    echo "1. Leia o arquivo EXERCISE.md novamente"
    echo "2. Consulte HINTS.md para dicas progressivas"
    echo "3. Verifique a sintaxe do seu YAML"
    exit 1
fi
