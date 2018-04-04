disp('Example MatLab script');
disp('We use Python and MPI to paralellize across nodes');
disp('This specific MatLab script is running on node...');
node
disp('The node variable was obtained from Python.');
disp('Now do some random """heavy""" matrix multiplication and exit');

A = randi(100, 300, 300);
B = randi(100, 300, 300);

C = A*B;

exit; % force matlab to exit