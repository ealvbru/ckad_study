# CKAD Question 22: Exercise

## Context



## Task

:A od iin e Deloymen named buffale-deloymen and in nameace gorilla i logging error.1) Look a e log idenify error meage.Find error, including Uer “yem:erviceaccoun:gorilla:defaul” canno li reource “deloymen”[…] in e nameace “gorilla”2) Udae e Deloymen buffalo-deloymen o reolve e error in e log of e Pod.Te buffalo-deloymen ‘S manife can be found a -romecargobuffalo-deloymen.yaml

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
