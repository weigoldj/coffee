# Dockerfile
```
FROM    start with base image
RUN     run a command 
COPY    copy local files into the container
ENV     add environment variable to container
ARG     Define argument that can be passed in at build time.  
EXPOSE  Expose port 

```

# Docker Commands
```
docker list     # list containers 
docker ps 

# embedded registry server
docker run -d -p 5000:5000 --restart=always --name registry registry:2

# pull image and tag for local registry
docker pull myimage:latest
docker tag myimage:latest localhost:5000/myimage:latest
docker push localhost:5000/myimage:latest

# build container, 
docker build --build-arg ENV=LINUX -f Dockerfile -t mystuff:latest .
docker tag <local_image> <new_image>
docker run -it -v $PWD:/home/app -p 3000:3000 mystuff:latest /bin/sh
```

# Kubernetes 
```
kubectl get pods -A  
kube
```

# Helm
```
helm install -f <global_values_file> chart chart_dir/ -n <namespace>

## helm plugin


```