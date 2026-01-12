# CKAD Question 33: Exercise

## Context



## Task

:A Dockerfile a been reared a -uman-orkbuildDockerfile1) Uing e reared Dockerfile, build a conainer image i e name macque and lag 3.0. Youmay inall and ue e ool of your coice.2) Uing e ool of your coice exor e buil conainer image in OC-forma and ore i a uman orkmacque 3.0 ar

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
