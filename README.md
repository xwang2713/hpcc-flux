# hpcc-flux

## Install fluxctl

## For private github need authentication
This is not required for public repo like helm-chart
Create secret "git-https-credentials" for git https access:
```console
kubectl create secret generic git-https-credentials \
    --from-literal=username=<username> \
    --from-literal=password=<password>
```
