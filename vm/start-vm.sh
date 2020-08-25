# Single GPU on Single VM

gcloud compute instances create $VM_NAME \
--project $PROJECT_ID --zone=$ZONE \
--machine-type $MCHN_TYPE --boot-disk-size $SD_SIZE \
--scopes storage-rw \
--metadata startup-script-url=gs://ce-startup-scripts/vm-setup.sh \
--image-family $IMAGE_VERSION --image-project ubuntu-os-cloud
