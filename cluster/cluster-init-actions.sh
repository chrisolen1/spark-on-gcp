# tensorflow dependency
pip install wrapt --upgrade --ignore-installed

# cloning repo of interest
git clone https://github.com/chrisolen1/urban-demand-allocation.git

# jupyter starting script
gsutil cp gs://spark-cluster-scripts/start-jupyter.sh /start-jupyter.sh

# initializing gh account
#cd ../../urban-demand-allocation && git config --global user.name "chrisolen1"
