# Canary Deployment Exercise

Este repositório contém um exercício prático sobre **Canary Deployment** no Kubernetes.

## Estrutura do Projeto

```
canary-deployment-exercise/
├── README.md                           # Este arquivo
├── EXERCISE.md                         # Instruções detalhadas do exercício
├── setup.sh                            # Script para preparar o ambiente
├── goshawk-namespace.yaml              # Namespace do exercício
├── krill-service.yaml                  # Service que roteia tráfego
├── current-krill-deployment.yaml       # Deployment estável (v1.0)
├── canary-krill-deployment.yaml.template  # Template para sua solução
└── canary-krill-deployment.yaml        # Sua solução (a ser criada)
```

## Início Rápido

### 1. Preparar o Ambiente

Se você tem um cluster Kubernetes rodando:

```bash
chmod +x setup.sh
./setup.sh
```

Isso irá:
- Criar o namespace `goshawk`
- Criar o Service `krill-service`
- Criar o Deployment `current-krill-deployment` com 5 pods

### 2. Ler as Instruções

Abra e leia o arquivo `EXERCISE.md` para entender completamente o que você precisa fazer.

### 3. Resolver o Exercício

Crie um arquivo `canary-krill-deployment.yaml` com seu Deployment canary.

Você pode usar o template fornecido como ponto de partida:
```bash
cp canary-krill-deployment.yaml.template canary-krill-deployment.yaml
```

### 4. Aplicar Sua Solução

```bash
kubectl apply -f canary-krill-deployment.yaml
```

### 5. Verificar Sua Solução

```bash
# Ver todos os pods
kubectl get pods -n goshawk

# Ver detalhes dos deployments
kubectl get deployments -n goshawk

# Ver endpoints do service
kubectl get endpoints krill-service -n goshawk

# Ver logs de um pod específico
kubectl logs -n goshawk <pod-name>
```

## Objetivos de Aprendizado

Ao completar este exercício, você irá:

1. **Entender Canary Deployments**: Aprender como implementar uma estratégia de rollout gradual
2. **Trabalhar com Labels no Kubernetes**: Usar labels para controlar roteamento de tráfego
3. **Calcular Distribuição de Tráfego**: Determinar o número correto de replicas para atingir uma percentagem específica
4. **Usar Services**: Entender como um Service roteia tráfego para múltiplos Deployments
5. **Praticar YAML do Kubernetes**: Escrever manifestos Kubernetes corretos

## Conceitos-Chave

### Canary Deployment
Uma estratégia de rollout que permite testar uma nova versão com um pequeno subconjunto de usuários antes de fazer rollout completo.

### Service Selector
Um Service usa labels para determinar quais pods recebem tráfego. Todos os pods com os labels corretos recebem tráfego proporcionalmente.

### Distribuição de Tráfego
Com 5 pods estáveis e 2 pods canary (7 total), o tráfego é distribuído aproximadamente:
- 5/7 ≈ 71% para pods estáveis
- 2/7 ≈ 29% para pods canary

Para atingir 40% canary, você precisa calcular o número correto de replicas.

## Dicas para Resolver

1. **Pense em proporções**: Se você quer 40% de tráfego no canary, qual é a proporção de pods?
2. **Mantenha a restrição**: O total não pode exceder 10 pods
3. **Use labels corretamente**: O Service precisa encontrar seus pods canary
4. **Teste incrementalmente**: Aplique e verifique o resultado antes de fazer ajustes

## Solução de Problemas

### Os pods canary não estão recebendo tráfego
- Verifique se o label `app: krill-service` está presente no seu Deployment
- Verifique se os pods estão em estado `Running`

### Muitos pods ou poucos pods
- Recalcule: Se você quer 40% de tráfego com máximo 10 pods, quantos pods canary você precisa?
- Lembre-se: você não pode modificar o Deployment estável

### Erro ao aplicar o YAML
- Verifique a sintaxe YAML (indentação, dois pontos, etc.)
- Verifique se todos os campos obrigatórios estão preenchidos

## Recursos Adicionais

- [Kubernetes Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Kubernetes Services](https://kubernetes.io/docs/concepts/services-networking/service/)
- [Canary Deployments](https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/#canary-deployments)

## Feedback

Se você tem dúvidas ou sugestões sobre este exercício, considere:
- Revisar a documentação oficial do Kubernetes
- Consultar os logs do seu cluster
- Experimentar com diferentes configurações

Boa sorte! 🚀
