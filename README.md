# Instructions for running the code:
1. Log into Tegner and move into your Private folder: `cd Private`.
2. Download these files onto Tegner (you can do this by running `$ git clone https://github.com/molguin92/PDC_Test_PythonMatlabMPI.git`), then move into the folder: `$ cd PDC_Test_PythonMatlabMPI`.
3. Request a job allocation (for example, two nodes for 10min, run 1 task per node, total of 2 task - i.e. they will execute on two distinct nodes):
```bash
$ salloc -A 2018-8 -t 0:10:00 --nodes=2 --ntasks-per-node=1
``` 
4. When you get the allocation, load the required modules in the following order (versions for i-compilers and intelmpi are optional):
```bash
$ module add i-compilers/18.0.1
$ module add intelmpi/18.0.1
$ module add anaconda/py36/5.0.1
$ module add matlab/r2017a
```
4. Make sure OpenMPI is NOT loaded by running `$ module list`. If it is, unload it by running `$ module unload openmpi`.
5. Make sure the MPI compiler is provided by i-compilers: `$ which mpicc`. If it's not, it's probably because OpenMPI is still loaded.
6. Run the install script I've provided (downloads and installs the required Python MPI library). If you've already run it before, clean up before running it again: `rm -rf mpi4py*`.
```bash
$ bash ./install.sh
```
7. Run the code using mpirun and specifying the number of tasks we want:
```bash
$ mpirun -np 2 python test.py
```
