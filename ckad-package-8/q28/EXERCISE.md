# CKAD Question 28: Exercise

## Context



## Task

:CKAD.mlQueion and Aner PDF59701- Udae e Proerunel caling configuraion of e Deloymen eb1 in e ckad00015nameace eing maxSurge o 2 and maxUnavailable o 592- Udae e eb1 Deloymen o ue verion ag 1.13.7 for e Ifconfnginx conainer image.3- Perform a rollback of e eb1 Deloymen o i reviou verion

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
