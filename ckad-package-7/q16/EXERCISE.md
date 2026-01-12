# CKAD Question 16: Exercise

## Context

:[uden@node-1] $ | kubeclConfig ue-conex k8

## Task

You ave rolled ou a ne od o your infrarucure and no you need o allo i o communicaei e eb and orage od bu noing ele. Given e running od kdn00201 -neod edi i oue a neork olicy a ill allo i o end and receive raffic only o and from e eb andorage od.CKAD.ml3070

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
