gcloud dataproc clusters create $CLUSTER_NAME --region $REGION \
--master-machine-type $MASTER_MCHN_TYPE --num-masters $NUM_MASTERS --master-boot-disk-size $MASTER_SD_SIZE \
--worker-machine-type $WORKER_MCHN_TYPE --num-workers $NUM_WORKERS --worker-boot-disk-size $WORKER_SD_SIZE \
--image-version $IMAGE_VERSION --optional-components ANACONDA \
--metadata 'PIP_PACKAGES=pandas==0.24.0 gcsfs' \
--initialization-actions gs://$BUCKET_NAME/cluster-init-actions.sh,gs://goog-dataproc-initialization-actions-${REGION}/python/pip-install.sh,gs://goog-dataproc-initialization-actions-${REGION}/gpu/install_gpu_driver.sh 
