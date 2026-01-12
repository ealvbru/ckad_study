# CKAD Question 9: Exercise

## Context

Anyime a eam need o run a conainer on Kubernee ey ill need o define a od iin ico run e conainer.

## Task

Pleae comlee e folloing:• Creae a YAML formaed od manifeoKDPD00101odl.yml o creae a od named a1 a run a conainer named a1con uingimage Ifccncfarg-ouui ee command line argumen: -line 56 -F• Creae e od i e kubec1 command uing e YAML file creaed in e reviou e• Wen e od i running dilay ummary daa abou e od in JSON forma uing e kubec1command and redirec e ouu o a file named oKDPD00101ou1.jonCKAD.mlQueion and Aner PDF1670• All of e file you need o ork i ave been creaed, emy, for your convenienceom

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
