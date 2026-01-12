# CKAD Question 6: Exercise

## Context

:[uden@node-1] $ | kubeclConfig ue-conex k8ConexA od i running on e cluer bu i i no reonding.:.validex

## Task

Te deired beavior i o ave Kubemee rear e od en an endoin reurn an HTTP 500 one ealz endoin. Te ervice, robe-od, ould never end raffic o e od ile i i failing.Pleae comlee e folloing:• Te alicaion a an endoin, ared, a ill indicae if i can acce raffic by reurning anHTTP 200. If e endoin reurn an HTTP 500, e alicaion a no ye finied iniializaion.• Te alicaion a anoer endoin ealz a ill indicae if e alicaion i ill orking aexeced by reurning an HTTP 200. If e endoin reurn an HTTP 500 e alicaion i no longerreonive.• Configure e robe-od od rovided o ue ee endoin• Te robe ould ue or 8080

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
