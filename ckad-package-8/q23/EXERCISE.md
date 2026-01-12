# CKAD Question 23: Exercise

## Context



## Task

:1) Fir udae e Deloymen cka00017-deloymen in e ckad00017 nameace:*To run 2 relica of e od*Add e folloing label on e od:Role uerUI2) Nex, Creae a NodePor Service named cerry in e ckad00017 nmeace exoing eckad00017-deloymen Deloymen on TCP or 8888

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
