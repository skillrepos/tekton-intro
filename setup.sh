sudo minikube start --vm-driver=none --addons=registry --kubernetes-version=v1.19.0 --insecure-registry "10.0.0.0/24"
kubectl create ns tekpipe
kubectl create ns roar
kubectl create secret -n tekpipe docker-registry regcreds --docker-server=http://localhost:5000/v2 --docker-username=*** --docker-password=***
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
curl -LO https://github.com/tektoncd/cli/releases/download/v0.17.1/tkn_0.17.1_Linux_x86_64.tar.gz
sudo tar xvzf tkn_0.17.1_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml

kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml

tkn hub -n tekpipe install task git-clone
tkn hub -n tekpipe install task kaniko




 
