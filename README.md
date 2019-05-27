## Deploying Go using Docker Desktop

```bash
# Build the docker image.
$ make docker

# Deploy the container.
alias k=kubectl
$ k apply -f .

# Expose the port. NOTE: If we are only using deployment, then we
need to expose the port.
# $ k port-forward deployment/go-kube-deployment 8080

# Call the service. We set the NodePort option on Docker Desktop.
$ curl localhost:30000
{"msg": "hello world"}
```


Other useful command:
```bash
$ k explain service.spec
```
