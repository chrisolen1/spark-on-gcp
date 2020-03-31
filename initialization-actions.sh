# tensorflow dependency
pip install wrapt --upgrade --ignore-installed

# cloning repo of interest
git clone https://github.com/chrisolen1/sarcasm-detection.git

# jupyter starting script
gsutil cp gs://sarc-bucket-5/start-jupyter.sh /start-jupyter.sh

# changing ownership for write access to repo
sudo chown -R chrisolen:chrisolen /sarcasm-detection

# upgrading to tensorflow-gpu
pip install --upgrade tensorflow-gpu

# initializing gh account
#cd ../../sarcasm-detection && git config --global user.name "chrisolen1"
