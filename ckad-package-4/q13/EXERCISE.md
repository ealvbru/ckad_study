# CKAD Question 13: Exercise

## Context

:[uden@node-1] $ | kubeclConfig ue-conex k8ConexA conainer iin e oller od i ard-coded o connec e nginxvc ervice on or 90 . A ior cange o 5050 an addiional conainer need o be added o e oller od ic ada econainer o connec o i ne or. Ti ould be realized a an ambaador conainer iin eod.:

## Task

• Udae e nginxvc ervice o erve on or 5050.• Add an HAroxy conainer named aroxy bound o or 90 o e oller od and deloy eenanced od. Ue e image aroxy and injec e configuraion locaed aoKDMC00101aroxy.cfg, i a ConfigMa named aroxy-config, mouned ino e conainero a aroxy.cfg i available a urlocalecaroxyaroxy.cfg. Enure a you udae earg of e oller conainer o connec o localo inead of nginxvc o a e connecion icorrecly roxied o e ne ervice endoin. You mu no modify e or of e endoin inoller' arg . Te ec file ued o creae e iniial oller od i available inoKDMC00101oller.yaml

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
