virtualenv env

source env/bin/activate

pip install -r requirements.txt

# setting up the sphinx docs.
sphinx-quickstart

watchman watch `pwd`
watchman -- trigger `pwd` notes '*.rst' -- sh build.sh
