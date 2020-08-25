gcloud iam service-accounts create gke-admin  

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member=serviceAccount:gke-admin@demand-allocation.iam.gserviceaccount.com \
--role roles/container.serviceAgent 

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member=serviceAccount:gke-admin@demand-allocation.iam.gserviceaccount.com \
--role roles/compute.serviceAgent

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member=serviceAccount:gke-admin@demand-allocation.iam.gserviceaccount.com \
--role roles/storage.objectAdmin
