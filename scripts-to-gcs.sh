gsutil cp ./init-actions/requirements.txt gs://$BUCKET_NAME

gsutil cp ./init-actions/spark-cluster-init-actions.sh gs://$BUCKET_NAME

gsutil cp ./start-jupyter.sh gs://$BUCKET_NAME

gsutil cp ./init-actions/vm-init-actions.sh gs://$BUCKET_NAME

gsutil cp ./init-actions/gkevm-init-actions.sh gs://$BUCKET_NAME
