#!/bin/env bash

#module load anaconda/py36/5.0.1
echo $(python --version)
wget https://bitbucket.org/mpi4py/mpi4py/downloads/mpi4py-3.0.0.tar.gz
tar -xzf mpi4py-3.0.0.tar.gz
cd mpi4py-3.0.0

python setup.py build
python setup.py install --user
cd ..
rm mpi4py-3.0.0.tar.gz
