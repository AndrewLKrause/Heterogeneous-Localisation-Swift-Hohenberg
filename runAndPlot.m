

subcritical = 1; %Use this only if f is a homogeneous function with a subcritical instability and qc is 1.
f = @(U)(1.5)*U.^3-1*U.^5;
F = @(U)(1.5/4)*U.^4-(1/6)*U.^6;

N = 8000; eps = 4e-4; T = [0,linspace(100,5000,2e3)];
dx = 1/(N-1); % Spacing between grid points
params.dx = dx; params.N = N; params.eps = eps; params.T = T;
params.tol = 1e-9; 
x = linspace(0,1,N)'; 
rf = @(x)x*0-0.8*(cos(2*pi*x));
r = rf(x);

Q = @(x)x*0+1;
qc = Q(x);

U = RunSimulation(r, qc, f, params,1e-2*randn(params.N,1));

params.T = [0,linspace(1e3,1e5,5)];
plotSols;
