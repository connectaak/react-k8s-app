set NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.59.0/24,192.168.49.0/24,192.168.39.0/24
minikube delete
minikube start --vm-driver="virtualbox"
kubectl cluster-info

npm run build
vite latest@create

kubectl get deploy

minikube start

kubectl apply -f ./deployment.yaml
    ## deployment.apps/react-k8s-app created
kubectl get deploy

npm install rimraf -g


minikube dashboard --url
kubectl cluster-info
http://127.0.0.1:61060/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/


# Update React Project
npm run build 

# How to create docker image
D:\Github\connectaak\react-k8s-app>docker build -t react-k8s-app-di .
# How to run docker image
D:\Github\connectaak\react-k8s-app>docker run -d -p 80:80 react-k8s-app-di
# Access React UI on http://localhost:8080

# Docker Active/Running contianers
docker ps

# Docker stop container
docker stop c3e0f3afc3fd