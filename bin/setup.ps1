# Add fluxcd helm repo
helm repo add fluxcd https://charts.fluxcd.io

# Define HelmRelease resource
kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml

# Create namespace flux
kubectl get ns | select-string -pattern "flux" -quiet
if ( $? -eq $false )
{
  kubectl ns flux
}
