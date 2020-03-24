gcloud dataproc clusters create sarc-cluster --region $REGION --zone $ZONE \
--master-machine-type $MASTER_MCHN_TYPE --num-masters $NUM_MASTERS --master-boot-disk-size $MASTER_SD_SIZE \
--worker-machine-type $WORKER_MCHN_TYPE --num-workers $NUM_WORKERS --worker-boot-disk-size $WORKER_SD_SIZE \
--image-version 1.4 --optional-components ANACONDA \
--metadata 'PIP_PACKAGES=pandas==0.23.0 scipy==1.1.0 tensorflow keras matplotlib sentencepiece tensorflow_hub bert-for-tf2' \
--initialization-actions gs://$BUCKET_NAME/initialization-actions.sh,gs://goog-dataproc-initialization-actions-${REGION}/python/pip-install.sh
