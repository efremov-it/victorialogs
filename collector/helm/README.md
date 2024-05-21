helm repo add vector https://helm.vector.dev
helm repo update

helm show values vector/vector

helm install vector vector/vector \
  --namespace vector \
  --create-namespace \
  --values values.yaml
