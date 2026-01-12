# Dicas para Resolver o Exercício de Canary Deployment

## Leia isto se estiver preso!

Este arquivo contém dicas progressivas para ajudá-lo a resolver o exercício sem revelar completamente a solução.

---

## Dica 1: Entender o Problema

**Pergunta**: Como o Kubernetes distribui tráfego entre pods?

**Resposta**: O Service roteia tráfego para **todos os pods** que correspondem aos seus seletores de labels. A distribuição é **uniforme** - cada pod tem igual chance de receber uma requisição.

---

## Dica 2: Calcular o Número de Replicas

**Pergunta**: Se você quer 40% de tráfego no canary com máximo 10 pods totais, quantos pods canary você precisa?

**Pense assim**:
- Você tem 5 pods estáveis (não pode mudar)
- Você quer 40% de tráfego no canary
- Total máximo: 10 pods

**Fórmula**:
```
Tráfego Canary = Pods Canary / (Pods Estáveis + Pods Canary)
40% = Pods Canary / 10
```

**Resolva para encontrar Pods Canary**

---

## Dica 3: Estrutura do Deployment Canary

Seu Deployment canary deve ter:

1. **Metadados**:
   - Nome: `canary-krill-deployment`
   - Namespace: `goshawk`

2. **Spec**:
   - `replicas`: O número que você calculou na Dica 2
   - `selector.matchLabels`: Deve corresponder aos labels do template

3. **Template Labels**:
   - `app: krill-service` (IMPORTANTE! Isso permite que o Service encontre seus pods)
   - `version: canary` (Para diferenciar dos pods estáveis)

4. **Container**:
   - Imagem: `krill-service:v2.0` (Nova versão!)
   - Porta: `8080`
   - Recursos: Igual ao Deployment estável

---

## Dica 4: Verificar Sua Solução

Depois de criar seu arquivo YAML, execute:

```bash
# Aplicar seu deployment
kubectl apply -f canary-krill-deployment.yaml

# Verificar pods
kubectl get pods -n goshawk -L version

# Contar pods por versão
kubectl get pods -n goshawk -L version | grep stable | wc -l
kubectl get pods -n goshawk -L version | grep canary | wc -l

# Ver endpoints do service
kubectl get endpoints krill-service -n goshawk
```

**O que procurar**:
- Você deve ter 5 pods com `version=stable`
- Você deve ter o número correto de pods com `version=canary`
- O Service deve listar todos os pods nos endpoints

---

## Dica 5: Validação Final

Para validar completamente sua solução:

1. **Contagem de pods**: 
   - Estáveis: 5
   - Canary: X (seu cálculo)
   - Total: ≤ 10

2. **Distribuição de tráfego**:
   - Canary: X / (5 + X) ≈ 40%
   - Estável: 5 / (5 + X) ≈ 60%

3. **Labels corretos**:
   - Todos os pods têm `app=krill-service`
   - Pods canary têm `version=canary`
   - Pods estáveis têm `version=stable`

---

## Dica 6: Erros Comuns

### Erro: "Pods canary não estão em Running"
- Verifique se a imagem `krill-service:v2.0` existe
- Verifique os logs: `kubectl logs -n goshawk <pod-name>`

### Erro: "Service não está roteando para pods canary"
- Verifique se o label `app: krill-service` está no seu Deployment
- Verifique com: `kubectl get pods -n goshawk --show-labels`

### Erro: "Muitos pods (mais de 10)"
- Recalcule o número de replicas
- Lembre-se: 5 estáveis + X canary ≤ 10

### Erro: "Sintaxe YAML inválida"
- Verifique a indentação (use 2 espaços, não tabs)
- Use um validador YAML online se necessário

---

## Dica 7: Próximos Passos (Após Resolver)

Depois de implementar com sucesso:

1. **Monitorar o canary**:
   ```bash
   kubectl logs -n goshawk -l version=canary --tail=10
   ```

2. **Simular tráfego**:
   ```bash
   kubectl run -it --rm debug --image=busybox --restart=Never -- sh
   # Dentro do pod:
   wget -O- http://krill-service.goshawk/
   ```

3. **Aumentar tráfego gradualmente**:
   - Aumente replicas canary para 3 (50% de tráfego)
   - Aumente para 4 (44% de tráfego)
   - Eventualmente faça rollout completo

4. **Rollback se necessário**:
   ```bash
   kubectl delete deployment canary-krill-deployment -n goshawk
   ```

---

## Ainda Preso?

Se ainda estiver tendo dificuldades:

1. Revise o arquivo `EXERCISE.md` novamente
2. Verifique o arquivo `current-krill-deployment.yaml` para ver um exemplo de Deployment válido
3. Compare sua solução com a estrutura esperada
4. Use `kubectl describe deployment` para ver detalhes

Boa sorte! 🚀
