# CKAD Question 3: Exercise

## Context



## Task

You are required o creae a od a reque a cerain amoun of CPU and memory, o i geceduled o-a node a a oe reource available.• Creae a od named nginx-reource in e od-reource nameace a reque a minimum of200m CPU and 1Gi memory for i conainer• Te od ould ue e nginx image• Te od-reource nameace a already been creaed

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
