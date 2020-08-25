cd click-to-deploy/k8s/neo4j-ce

helm template "${APP_INSTANCE_NAME}" chart/neo4j-ce \
  --namespace "${NAMESPACE}" \
  --set "neo4j.image.repo=${IMAGE_NEO4J_CE}" \
  --set "neo4j.image.tag=${TAG}" \
  --set "neo4j.persistence.storageClass=${NEO4J_STORAGE_CLASS}" \
  --set "neo4j.persistence.size=${PERSISTENT_DISK_SIZE}" \
  --set "neo4j.password=${NEO4J_PASSWORD}" \
  > "${APP_INSTANCE_NAME}_manifest.yaml"

kubectl apply -f "${APP_INSTANCE_NAME}_manifest.yaml" --namespace "${NAMESPACE}"
