#!/usr/bin/env python3

from mpi4py import MPI
import subprocess

comm = MPI.COMM_WORLD
rank = comm.Get_rank()
node = MPI.Get_processor_name()

matlab_cmd = ['matlab', '-nodesktop', '-nosplash', '-r', 'node={name};test'.format(name=node)]
subprocess.run(matlab_cmd)



