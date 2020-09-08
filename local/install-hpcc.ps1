$GHUSER = "xwang2713"
$GHEMAIL = "xiaoming.wang@lexisnexis.com"

helm upgrade -i helm-operator fluxcd/helm-operator `
            --namespace flux `
            --set helm.versions=v3

helm upgrade -i flux fluxcd/flux `
       --set git.user=${GHUSER} `
       --set git.email=${GHEMAIL} `
       --set git.branch=master `
       --set git.url=git@github.com:${GHUSER}/flux-hpcc-cluster `
       --set git.path=releases/local `
       --set syncGarbageCollection.enabled=true `
       --set sync.timeout.interval=3m `
       -n flux

#Copy following output to git repo settings/Deploy keys and enable "Allow write access"
#fluxctl identity --k8s-fwd-ns flux
