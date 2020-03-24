pip install wrapt --upgrade --ignore-installed

git clone https://github.com/chrisolen1/sarcasm-detection.git

git config --global user.name "chrisolen1"

gsutil cp gs://sarc-bucket-5/start-jupyter.sh /start-jupyter.sh

sudo chown -R chrisolen:chrisolen /sarcasm-detection
