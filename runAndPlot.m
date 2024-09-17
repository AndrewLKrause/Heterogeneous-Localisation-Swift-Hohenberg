%clear
rng(3);
subcritical = 0; %Use this only if f is a homogeneous function with a subcritical instability and qc is 1.
f = @(U)-U.^3;
%f = @(U)2*U.^3-U.^5;
F = @(U)(1/2)*U.^4-(1/6)*U.^6;
 %f = @(U)2*U.^2-U.^3;
 %F = @(U)(2/3)*U.^3-(1/4)*U.^4;
 eps = 2e-4;

N = 50000; T = [0,linspace(10000,20000,3)];
dx = 1/(N-1); % Spacing between grid points
params.dx = dx; params.N = N; params.eps = eps; params.T = T;
params.tol = 1e-6; 
x = linspace(0,1,N)'; 
%rf = @(x)-cos(2*pi*x)*0-0.7;
%rf = @(x)-cos(2*pi*x)*0+1;

%rf = @(x)-cos(20*pi*x.^2);
rf = @(x)-cos(2*pi*x);
r = rf(x);

Q = @(x)x*0+1;
qc = Q(x);

%U = RunSimulation(r, qc, f, params,1e-2*randn(params.N,1));

%Either load the initial condition from a file, or use a small
%normally-distributed random one.
%load('init3.mat');load('init_eps_2e-3.mat');
Us = 1e-2*randn(params.N,1);
%load('init_eps_2e-4.mat');


U = RunSimulation(r, qc, f, params,Us);


if(subcritical && ~exist('rc'))
    [rc, maxwellpt] = ContinueFold(f, F, params);
    Xs2 = AllZeros(@(x)rf(x)-rc, 0, 1, N);
    Xs3 = AllZeros(@(x)rf(x)-maxwellpt, 0, 1, N);
end


plotSols;



