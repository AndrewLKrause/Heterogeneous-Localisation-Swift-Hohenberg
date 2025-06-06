%This script runs and plots simulations in 1D. Depending on the flags it
%will call continuation code to produce the lines in the figures
%corresponding to local folds in a subcriticfal instability, as well as the
%Maxwell point.

%clear
rng(3);
subcritical = 0; %Use this only if f is a homogeneous function with a subcritical instability and qc is 1.
f = @(U)-U.^3;

%Capital F is the formal integra of little f, and is only needed if
%subcritical=1.
F = @(U)-(1/4)*U.^4;

%Note that epsilon will be squared in the Laplacian (and taken to the fourth power in the biharmonic) 
%so can become very small numerically.
eps = 2e-3;

%Number of grid points and time interval to simulate over.
N = 10000; T = [0,linspace(10000,20000,3)];
dx = 1/(N-1); % Spacing between grid points
params.dx = dx; params.N = N; params.eps = eps; params.T = T;
params.tol = 1e-6; 
x = linspace(0,1,N)'; 

% rf is used as an analytical representation of r(x), whereas r is a
% numerical vector evaluated on points in [0,1].
rf = @(x)-cos(2*pi*x);
r = rf(x);

% Similarly here these are used for heterogeneous wavenumbers.
Q = @(x)x*0+1;
qc = Q(x);



%Either load the initial condition from a file, or use a small
%normally-distributed random one.
%load('init3.mat');load('init_eps_2e-3.mat');
Us = 1e-2*randn(params.N,1);
%load('init_eps_2e-4.mat');


% Run the simulation.
U = RunSimulation(r, qc, f, params,Us);


%Do the continuation if subcritical is enabled and we are not doing a
%subsequent run (i.e. if we do not know the value of r at the maxxwellpt
%denoted as rc).
if(subcritical && ~exist('rc'))
    [rc, maxwellpt] = ContinueFold(f, F, params);
    Xs2 = AllZeros(@(x)rf(x)-rc, 0, 1, N);
    Xs3 = AllZeros(@(x)rf(x)-maxwellpt, 0, 1, N);
end

% Plot the solution at the end time and any vertical curves.
plotSols;



