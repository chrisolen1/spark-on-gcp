# update all the packages, optional.
sudo apt -y update && sudo apt -y upgrade

# purge python2.7
sudo apt-get autoremove -y --purge python2.7
# get pip for python3
sudo apt-get install -yq python3-pip libsndfile1-dev
# upgrade pip - important for accessing packages e.g. tf2.1.0
pip3 install --upgrade pip
pip3 install wrapt --upgrade --ignore-installed
pip3 install pandas==0.24.0
pip3 install scipy 
pip3 install gcsfs
pip3 install jupyter
pip3 install --upgrade google-cloud-storage
pip3 install tqdm
pip3 install py2neo
pip3 install networkx
pip3 install shapely

#cupy setup
#pip3 install tensorflow-gpu==2.1.0
#pip3 install cupy --no-cache-dir -vvvv
#pip3 install cython
#pip3 install ipdb==0.8.1

# kubectl
snap install kubectl --classic

# cloning repo of interest
git clone https://github.com/chrisolen1/urban-demand-allocation.git

# jupyter starting script
gsutil cp gs://ce-startup-scripts/start-jupyter.sh /start-jupyter.sh

# Changing ownership for write access to repo
sudo chown -R chrisolen:chrisolen /urban-demand-allocation

