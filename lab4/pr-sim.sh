curl -v -H 'X-GitHub-Event: pull_request' -H 'X-Hub-Signature: sha1=ba0cdc263b3492a74b601d240c27efe81c4720cb' -H 'Content-Type: application/json' -d '{"action": "opened", "number": "1","pull_request":{"head":{"sha": "a6c8bcd44e3eafb066bdaa39bf609e75f64cbf9d"}},"repository":{"clone_url": "https://github.com/skillrepos/tekton-docker-k8s.git"}}' http://localhost:8080

