# CKAD Question 25: Exercise

## Context



## Task

:Creae a Deloymen named exoe in e exiing ckad00014 nameace running 6 relica of aPod. Secify a ingle conainer uing e ifccncfnginx: 1.13.7 imageAdd an environmen variable named NGINX_PORT i e value 8001 o e conainer en exoeor 8001

## Requirements

Complete the task as described above.

## How to Test

1. Apply your solution:
   ```bash
   kubectl apply -f your-solution.yaml
   ```

2. Verify the result:
   ```bash
   kubectl get pods
   kubectl describe pod <pod-name>
   ```

3. Run the validation script:
   ```bash
   ./validate.sh
   ```

## Tips

- Read the task carefully
- Understand all requirements before starting
- Use `kubectl` to verify your work
- Check the HINTS.md file if you get stuck

## References

- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [CKAD Exam Curriculum](https://training.linuxfoundation.org/certification/certified-kubernetes-application-developer-ckad/)
