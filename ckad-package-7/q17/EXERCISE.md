# CKAD Question 17: Exercise

## Context

:[uden@node-1] $ | kubeclConfig ue-conex k8ConexA uer a reored an aoicauon i uneacable due o a failing liveneProbe .

## Task

Perform e folloing ak:• Find e broken od and ore i name and nameace o oKDOB00401broken.x in eforma:<nameace><od>CKAD.mlQueion and Aner PDF3270Te ouu file a already been creaed:.validexamdum.com• Sore e aociaed error even o a file oKDOB00401error.x, Te ouu file a alreadybeen creaed. You ill need o ue e -o ide ouu ecifier i your command• Fix e iue.

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
