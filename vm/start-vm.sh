# Single GPU on Single VM

gcloud compute instances create $VM_NAME \
--project $PROJECT_ID --zone $ZONE --zone=$ZONE \
--machine-type $MCHN_TYPE --boot-disk-size $SD_SIZE \
--scopes storage-rw \
--maintenance-policy TERMINATE --restart-on-failure \
--metadata-from-file startup-script=vm-init-actions.sh \
--image-family $IMAGE_VERSION --image-project ubuntu-os-cloud
