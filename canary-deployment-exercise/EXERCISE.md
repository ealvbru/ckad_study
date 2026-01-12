# Exercício: Canary Deployment no Kubernetes

## Contexto

Você é solicitado a preparar um **Canary deployment** para testar uma nova versão de aplicação.

## Cenário Inicial

Atualmente, você tem:

- **Namespace**: `goshawk`
- **Service**: `krill-service` que aponta para 5 pods criados pelo Deployment `current-krill-deployment`
- **Deployment Atual**: `current-krill-deployment` com 5 replicas rodando a versão `v1.0`

```
krill-service (Service)
    ↓
current-krill-deployment (5 pods)
    ├── Pod 1
    ├── Pod 2
    ├── Pod 3
    ├── Pod 4
    └── Pod 5
```

## Tarefas

### 1. Criar um Deployment Canary

Crie um novo Deployment chamado **`canary-krill-deployment`** no namespace `goshawk` com as seguintes características:

- **Nome**: `canary-krill-deployment`
- **Namespace**: `goshawk`
- **Imagem**: `krill-service:v2.0` (nova versão)
- **Labels**: Deve ter `app: krill-service` para que o Service `krill-service` o inclua no roteamento
- **Versão Label**: Adicione um label `version: canary` para diferenciar dos pods estáveis

### 2. Modificar o Deployment Canary

Configure o Deployment canary para atender aos seguintes requisitos:

- **Máximo de pods**: 10 pods no total no namespace `goshawk` (combinando ambos os deployments)
- **Distribuição de tráfego**: 40% do tráfego do `krill-service` deve ir para os pods do `canary-krill-deployment`
- **Implícação**: Isso significa que aproximadamente 60% do tráfego continua indo para `current-krill-deployment`

## Restrições

- Não modifique o Deployment `current-krill-deployment`
- Não modifique o Service `krill-service`
- O Service deve continuar apontando para ambos os deployments (estável e canary)
- Use apenas recursos Kubernetes padrão (Deployment, Service, etc.)

## Arquivos Fornecidos

- `goshawk-namespace.yaml` - Namespace goshawk
- `current-krill-deployment.yaml` - Deployment atual com 5 replicas
- `krill-service.yaml` - Service que roteia tráfego
- `EXERCISE.md` - Este arquivo com as instruções

## Solução Esperada

Você deve criar um arquivo chamado **`canary-krill-deployment.yaml`** que:

1. Define um novo Deployment
2. Configura o número correto de replicas para atingir 40% de tráfego
3. Usa a imagem `krill-service:v2.0`
4. Tem labels apropriados para ser incluído no Service

## Dicas

- Pense em como o Kubernetes distribui tráfego entre pods com o mesmo label `app`
- Considere quantos pods você precisa no canary para atingir 40% de tráfego
- O Service usa seletores de labels para rotear tráfego, não há necessidade de configuração adicional de rede

## Como Testar Sua Solução

1. Aplique todos os arquivos YAML:
   ```bash
   kubectl apply -f goshawk-namespace.yaml
   kubectl apply -f krill-service.yaml
   kubectl apply -f current-krill-deployment.yaml
   kubectl apply -f canary-krill-deployment.yaml
   ```

2. Verifique os pods:
   ```bash
   kubectl get pods -n goshawk
   ```

3. Verifique os endpoints do Service:
   ```bash
   kubectl get endpoints -n goshawk
   ```

4. Valide que o tráfego está sendo distribuído corretamente (40% canary, 60% estável)

## Próximos Passos (Após Resolver)

Depois de implementar a solução, você pode:
- Monitorar o comportamento da versão canary
- Aumentar gradualmente o tráfego para o canary
- Eventualmente fazer rollout completo ou rollback se necessário
