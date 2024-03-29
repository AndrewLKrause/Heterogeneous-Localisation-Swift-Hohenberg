%clear
rng(1);
%subcritical = 1; %Use this only if f is a homogeneous function with a subcritical instability and qc is 1.
%f = @(U)1.5*U.^3-1*U.^5;
%F = @(U)1.5/4*U.^4-(1/6)*U.^6;
% f = @(U)2*U.^2-U.^3;
% F = @(U)(2/3)*U.^3-(1/4)*U.^4;
% eps = 1e-2;

N = 10000; T = [0,linspace(100,5000,1e2)];
dx = 1/(N-1); % Spacing between grid points
params.dx = dx; params.N = N; params.eps = eps; params.T = T;
params.tol = 1e-6; 
x = linspace(0,1,N)'; 
%rf = @(x)-cos(2*pi*x);
%rf = @(x)-0.4*cos(2*pi*x);
r = rf(x);

Q = @(x)x*0+1;
qc = Q(x);

U = RunSimulation(r, qc, f, params,1e-2*randn(params.N,1));


if(subcritical && ~exist('rc'))
    [rc, maxwellpt] = ContinueFold(f, F, params);
    Xs2 = AllZeros(@(x)rf(x)-rc, 0, 1, N);
    Xs3 = AllZeros(@(x)rf(x)-maxwellpt, 0, 1, N);
end


plotSols;
