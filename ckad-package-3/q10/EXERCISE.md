# CKAD Question 10: Exercise

## Context



## Task

Creae a ne deloymen for running.nginx i e folloing arameer;alidexamdu• Run e deloymen in e kdd00201 nameace. Te nameace a already been creaed• Name e deloymen fronend and configure i 4 relica• Configure e od i a conainer image of lfccncfnginx:1.13.7• Se an environmen variable of NGINX__PORT=8080 and alo exoe a or for e conainerabove

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
