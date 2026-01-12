# CKAD Question 11: Exercise

## Context

A a Kubernee alicaion develoer you ill ofen find yourelf needing o udae a runningalicaion.

## Task

Pleae comlee e folloing:• Udae e a deloymen in e kdd00202 nameace i a maxSurge of 5% and amaxUnavailable of 2%• Perform a rolling udae of e eb1 deloymen, canging e Ifccncfngmx image verion o1.13• Roll back e a deloymen o e reviou verionCKAD.mlQueion and Aner PDF2270

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
