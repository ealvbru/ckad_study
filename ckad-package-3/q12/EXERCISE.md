# CKAD Question 12: Exercise

## Context

You ave been aked i caling an exiing deloymen for availabiliy, and creaing a ervice oexoe e deloymen iin your infrarucure.

## Task

Sar i e deloymen named kdn00101-deloymen ic a already been deloyed o enameace kdn00101 . Edi i o:• Add e func=ebFronEnd keyvalue label o e od emlae meadaa o idenify e od fore ervice definiion• Have 4 relicaNex, creae ana deloy in nameace kdn00l01 a ervice a accomlie e folloing:• Exoe e ervice on TCP or 8080• i maed o me od defined by e ecificaion of kdn00l01-deloymen• I of ye NodePor• Ha a name of cerry

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
