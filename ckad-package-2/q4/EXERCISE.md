# CKAD Question 4: Exercise

## Context

You are aked o creae a ConfigMa and conume e ConfigMa in a od uing a volume moun.

## Task

Pleae comlee e folloing:• Creae a ConfigMa named anoer-config conaining e keyvalue air: key4value3• ar a od named nginx-configma conaining a ingle conainer uing enginx image, and moun e key you ju creaed ino e od under direcory aloaa

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
