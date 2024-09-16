helm repo add vector https://helm.vector.dev
helm repo update

helm show values vector/vector

helm upgrade --install vector-test vector/vector \
  --namespace vector \
  --create-namespace \
  --values helm/values.yaml

# Operator
helm repo add vector-operator https://kaasops.github.io/vector-operator/helm
helm repo update

helm search repo vector-operator/

