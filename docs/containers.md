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
docker images     # list images
docker ps         # list containers

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
# other run examples 
docker run -it --net host <image>  
docker run -it --entrypoint /bin/bash <image>

# save and load 
docker save -o <tar_file> <image_name>
docker load -i <tar_file>

# remove containers and images
docker rm -f $(docker ps -aq)  
docker rmi -f (docker images -q) 

# memory management
docker system df   # show disk space
docker system prune -a --volumes

```

# Kubernetes 
```
# Info
kubectl get nodes       # list nodes
kubectl get pods -A     # get running pods
kubectl get namespaces  
kubectl get all 

# watch command in linux
watch kubectl get pods -A

# certificates
/etc/kubernetes/pki             # certificates default location
kubeadm certs check-expiration  # check certificates expiration
kubeadm certs renew             # renew certificates  
kubeadm reset                   # reset if you cannont renew certificates.



```

# Helm
```
helm install -f <global_values_file> chart chart_dir/ -n <namespace>

## helm plugin


```
