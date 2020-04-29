# Prophylactically update all the packages, optional.
sudo apt -y update && sudo apt -y upgrade

# purge python2.7
sudo apt-get autoremove -y --purge python2.7
# get pip for python3
sudo apt-get install -yq python3-pip libsndfile1-dev
# upgrade pip - important for accessing packages e.g. tf2.1.0
pip3 install --upgrade pip
pip3 install wrapt --upgrade --ignore-installed
pip3 install pandas
pip3 install scipy 
pip3 install tensorflow-gpu==2.1.0
pip3 install keras
pip3 install tensorflow_hub
pip3 install pomegranate==0.10
pip3 install gcsfs
pip3 install jupyter
pip3 install librosa
pip3 install soundfile
pip3 install python_speech_features
pip3 install pydub
pip3 install --upgrade google-cloud-storage
pip3 install wave
pip3 install hmmlearn
pip3 install matplotlib
pip3 install tqdm
#cupy setup
pip3 install cupy --no-cache-dir -vvvv
pip3 install cython
# sompy
pip3 install sompy
wget https://github.com/sevamoo/SOMPY/archive/master.zip && pip3 install master.zip
pip3 install ipdb
pip3 install ipdb==0.8.1

# cloning repo of interest
git clone https://github.com/venkunikku/crew-2.git

# jupyter starting script
gsutil cp gs://ad-bucket-15730/start-jupyter.sh /start-jupyter.sh

# Changing ownership for write access to repo
sudo chown -R chrisolen:chrisolen /crew-2

# initializing gh account
#cd ../../crew-2 && git config --global user.name "chrisolen1"
