## Deploying Go using Docker Desktop

```
# Build the docker image.
$ make docker

# Deploy the container.
alias k=kubectl
$ k apply -f .

# Expose the port.
$ k port-forward deployment/go-kube-deployment 8080

# Call the service.
$ curl localhost:8080
```

