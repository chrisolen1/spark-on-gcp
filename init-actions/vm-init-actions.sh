# update all the packages, optional.
sudo apt -y update
sudo apt-get install -y git

# get pip
sudo apt install -y python3-pip
gsutil cp gs://ce-startup-scripts/requirements.txt /requirements.txt
pip3 install -r requirements.txt

# cloning repo of interest
git clone https://github.com/chrisolen1/urban-demand-allocation.git

# jupyter starting script
gsutil cp gs://ce-startup-scripts/start-jupyter.sh /start-jupyter.sh

# Changing ownership for write access to repo
sudo chown -R chrisolen:chrisolen /urban-demand-allocation

