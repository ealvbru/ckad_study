# CKAD Question 27: Exercise

## Context



## Task

:1) Creae a ecre named a-ecre in e defaul nameace conaining e folloing ingle keyvalue air:Key3: value12) Creae a Pod named ngnix ecre in e defaul nameace.Secify a ingle conainer uing enginx:able image.Add an environmen variable named BEST_VARIABLE conuming e value of e ecre key3.

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
