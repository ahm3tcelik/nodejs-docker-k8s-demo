1- 
docker build -t [username]/[container-name]:[tag] .
docker build -t amad101588/nodejs-docker-k8s-demo:latest .

2-
docker push amad101588/nodejs-docker-k8s-demo:latest .

3- kubectl create namespace dev

3- kubectl apply -f configmap.yml -n dev
4- kubectl apply -f deployment.yml -n dev
4- kubectl apply -f service.yml -n dev

5-
minikube service nodejs-docker-k8s-demo  --url -n dev

Result:
ahmetcelik@Ahmets-MacBook-Pro nodejs-docker-k8s-demo % minikube service nodejs-docker-k8s-demo  --url -n dev
http://127.0.0.1:50837
❗  Because you are using a Docker driver on darwin, the terminal needs to be open to run it.
    
