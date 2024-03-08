# Applications

## Summary

I've never worked with Kustomize before and currently don't have an environment to test this, I believe this would work but not 100%

In order to port forward the following steps would have to be taken to get the port 
`kubectl get service podinfo`

Once the port is know (default is `9898`) the following command can be used, assuming we want local port to be 80
`kubectl port-forward service/podinfo 80:9898`

Alternatively if we don't want to specify the port below would work as well
`kubectl port-forward service/podinfo :9898`

In order to deploy this to a running cluster standard one should be able to run `terraform apply` as with any other tf based change