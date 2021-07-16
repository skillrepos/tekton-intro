tkn task start git-clone --namespace=tekpipe --param url=https://github.com/skillrepos/tekton-docker-k8s.git --param revision=main --param deleteExisting=true --workspace name=output,claimName=git-files-pvc --use-param-defaults --showlog


