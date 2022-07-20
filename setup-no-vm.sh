# installs tekton pieces only
# assumes existing kubernetes cluster
# docker registry needs to be available at localhost:5000
# puts command line interface in /usr/local/bin
# get the appropriate command line interface from https://github.com/tektoncd/cli/releases/download/v0.17.1

kubectl create ns tekpipe
kubectl create ns roar
kubectl create secret -n tekpipe docker-registry regcreds --docker-server=http://localhost:5000/v2 --docker-username=*** --docker-password=***
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.27.1/release.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml

kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/previous/v0.14.2/release.yaml
kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/previous/v0.14.2/interceptors.yaml




 
