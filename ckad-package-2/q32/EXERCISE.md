# CKAD Question 32: Exercise

## Context



## Task

:Te od for e Deloymen named noql in e crayin nameace fail o ar becaue iconainer run ou of reource.Udae e nool Deloymen o a e Pod:1) Reque 160M of memory for i Conainer2) Limi e memory o alf e maximum memory conrain e for e crayfa name ace.

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
