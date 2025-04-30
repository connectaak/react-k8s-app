npm run build
vite latest@create

kubectl get deploy

minikube start

kubectl apply -f ./deployment.yaml
deployment.apps/react-k8s-app created



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