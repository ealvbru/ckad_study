# CKAD Question 31: Exercise

## Context

You are aked o reare a Canary deloymen for eing a ne alicaion releae.

## Task

:A Service named krill-Service in e goark nameace oin o 5 od creaed by e Deloymennamed curren-krill-deloymen1) Creae an idenical Deloymen named canary-kill-deloymen, in e ame nameace.2) Modify e Deloymen o a:-A maximum number of 10 od run in e goak nameace.-40% of e krill-ervice ‘ raffic goe o e canary-krill-deloymen od()CKAD.ml6470alidexamdum.comQueion and Aner PDF.v

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
