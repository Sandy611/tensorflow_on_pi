python3 -m pip install virtualenv         #installs virtual environment
cd Desktop                                #change the directory to Desktop
mkdir tf_pi                               #makes tf_pi directory
cd tf_pi
virtualenv env                            #creates a virtual environment named "env"
source env/bin/avtivate                   #activates the virtual environment//will se (env) at the starting of the terminal

sudo apt-get install -y libhdf5-dev libc-ares-dev libeigen3-dev gcc gfortran python-dev libgfortran5 \
                          libatlas3-base libatlas-base-dev libopenblas-dev libopenblas-base libblas-dev \
                          liblapack-dev cython libatlas-base-dev openmpi-bin libopenmpi-dev python3-dev
python3 -m pip install keras_applications==1.0.8 --no-deps
python3 -m pip install keras_preprocessing==1.1.0 --no-deps
python3 -m pip install h5py==2.9.0
python3 -m pip install pybind11
python3 -m pip install -U six wheel mock
python3 -m pip uninstall tensorflow       #if you have any earlier versions of tensorflow
wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.2.0/tensorflow-2.2.0-cp37-none-linux_armv7l.whl
python3 -m pip install tensorflow-2.2.0-cp37-none-linux_armv7l.whl

sudo reboot
