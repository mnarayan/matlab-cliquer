cd('+Cliquer');

strDir = fileparts(which('Compile')); %[fileparts(tmp) '/cliquer/'];
%strDir = '~/MATLAB/netsci/external/matlab-cliquer/+Cliquer'
% clean old stuff
system(['make -C ' 'cliquer/ clean']);
system(['make -C ' '/cliquer/']);

mex -v -Icliquer FindAll.c  cliquer/cliquer.o cliquer/graph.o cliquer/reorder.o

cd ..
