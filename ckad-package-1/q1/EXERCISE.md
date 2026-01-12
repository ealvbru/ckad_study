# CKAD Question 1: Exercise

## Context

:[uden@node-1] $ | kubeclConfig ue-conex k8ConexA eb alicaion require a ecific verion of redi o be ued a a cace.

## Task

Creae a od i e folloing caraceriic, and leave i running en comlee:• Te od mu run in e eb nameace.Te nameace a already been creaed• Te name of e od ould be cace• Ue e Ifccncfredi image i e 3.2 ag• Exoe or 6379

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
