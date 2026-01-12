# CKAD Question 19: Exercise

## Context



## Task

:• Creae a deloymen named deloymen-xyz in e defaul nameace, a:•Include a rimarylfccncfbuybox:1 conainer, named logger-dev•include a idecar Ifccncffluend:v0.12 conainer, named adaer-zen•Moun a ared volume mlog on bo conainer, ic doe no eri en e odi deleed•Inruc e logger-devconainer o run e commandalidexic ould ouu log o mloginu.log in lain ex forma, i examle value::.v• Te adaer-zen idecar conainer ould read mloginu.log and ouu e daa omlogouu.* in Fluend JSON forma. Noe a no knoledge of Fluend i required ocomlee i ak: all you ill need o acieve i i o creae e ConfigMa from e ec filerovided a oKDMC00102fluend-configma .yaml , and moun a ConfigMa o fluendecin e adaer-zen idecar conainer

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
