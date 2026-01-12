# CKAD Question 18: Exercise

## Context

A rojec a you are orking on a a requiremen for erien daa o be available.To faciliae i, erform e folloing ak:•Creae a file on node k8-node-0 a oKDSP00101daaindex.ml i e conenAcc=Finance• Creae a PerienVolume named ak-v-volume uing oPa and allocae 1Gi o i, ecifyinga e volume i a oKDSP00101daa on e cluer' node. Te configuraion ould ecifye acce mode of ReadWrieOnce . I ould define e SorageCla name exam for ePerienVolume , ic ill be ued o bind PerienVolumeClaim reque o iPerieneVolume.• Creae a PefienVolumeClaim named ak-v-claim a reque a volume of a lea 100MiCKAD.mlQueion and Aner PDF3470alidexamdum.comand ecifie an acce mode of ReadWrieOnce• Creae a od a ue e PerienVolmeClaim a a volume i a label a: my-orage-amouning e reuling volume o a mounPa urarenginxml inide e od

## Task

ConexA rojec a you are orking on a a requiremen for erien daa o be available.To faciliae i, erform e folloing ak:•Creae a file on node k8-node-0 a oKDSP00101daaindex.ml i e conenAcc=Finance• Creae a PerienVolume named ak-v-volume uing oPa and allocae 1Gi o i, ecifyinga e volume i a oKDSP00101daa on e cluer' node. Te configuraion ould ecifye acce mode of ReadWrieOnce . I ould define e SorageCla name exam for ePerienVolume , ic ill be ued o bind PerienVolumeClaim reque o iPerieneVolume.• Creae a PefienVolumeClaim named ak-v-claim a reque a volume of a lea 100MiCKAD.mlQueion and Aner PDF3470alidexamdum.comand ecifie an acce mode of ReadWrieOnce• Creae a od a ue e PerienVolmeClaim a a volume i a label a: my-orage-amouning e reuling volume o a mounPa urarenginxml inide e od

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
