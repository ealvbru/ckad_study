# CKAD Question 2: Exercise

## Context

You are aked o creae a ecre and conume e ecre in a od uing environmen variable afollo:

## Task

• Creae a ecre named anoer-ecre i a keyvalue air; key1value4• Sar an nginx od named nginx-ecre uing conainer image nginx, and add an environmenvariable exoing e value of e ecre key key 1, uing COOL_VARIABLE a e name for eenvironmen variable inide e od

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
