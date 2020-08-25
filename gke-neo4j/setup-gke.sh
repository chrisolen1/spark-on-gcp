# Create a new cluster from the command line:
gcloud container clusters create "${CLUSTER}" --zone "${ZONE}" \
--machine-type $MCHN_TYPE --disk-type pd-$NEO4J_STORAGE_CLASS \
--scopes storage-rw 

# Configure kubectl to connect to the new cluster:
gcloud container clusters get-credentials "${CLUSTER}" --zone "${ZONE}"

# Set up cluster to understand application resources:
kubectl apply -f "https://raw.githubusercontent.com/GoogleCloudPlatform/marketplace-k8s-app-tools/master/crd/app-crd.yaml"
