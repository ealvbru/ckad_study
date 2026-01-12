# CKAD Question 5: Exercise

## Context

Your alicaion’ nameace require a ecific ervice accoun o be ued.

## Task

Udae e a-a deloymen in e roducion nameace o run a e rericedervice erviceaccoun. Te ervice accoun a already been creaed.alidex

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
