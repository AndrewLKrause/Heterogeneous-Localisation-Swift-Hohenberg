N = 10000; % Number of grid points.

eps = 1e-3; % Small parameter in the problem.

dx = 1/(N-1); % Spacing between grid points

x = linspace(0,1,N)'; T = [0,linspace(100,5000,2e3)]; % Space/time ranges.

% rf is the function r(x), and r a vector evaluated at the grid points.
rf = @(x)(0.4-0.5*(cos(2*pi*x)));
r = rf(x);

% This is the function q_c(x) as a vector at grid points.
qc = 1+0.5*cos(7*pi*x);

 % This checks if there are any regions of homogeneous multistability.
homStab = (r - qc.^4);
if(any(homStab > 0))
    'Careful! Regions where stability is not satisfied may exhibit multistability.'
end

% Form the spatial operators. Below are two different implementations.


% Functional implementation (Neumann BCs)
Lap = @(u)(eps/dx)^2*[u(2)-u(1); u(1:end-2)-2*u(2:end-1)+u(3:end);u(end-1)-u(end)];
Bih = @(u)Lap(Lap(u));

% Matrix implementation
%e = ones(N,1); % Vector of ones to use across the diagonals
%Lap= spdiags([e -2*e e], -1:1, N, N); % Diagonal Laplacian
%Lap(1,1) = -1; Lap(N,N) = -1; % Neumann boundary conditions
%Lap(N,1) = 1; Lap(1,N) = 1; % Periodic BCs
%Lap = Lap.*(eps./dx)^2; % Scale the finite-difference operator
%Bih = Lap*Lap;

% This is a sparsity pattern of the Jacobian for use in implicit scheme.
e = ones(N,1); % Vector of ones to use across the diagonals
JP = spdiags([e e e e e], -2:2, N, N); % Diagonal Laplacian


% Right-hand-side of the discretised system.
F = @(t,U)r.*U-((qc.^4).*U+qc.^2.*Lap(U)+Lap(qc.^2.*U)+Bih(U)) -U.^3;

%Initial condition.
rng(1);
uinit = 1e-4*randn(N,1);

% Solve the system with given tolerances. 1e-8 good minimum, 1e-11 better.
%opts = odeset('JPattern',JP);
opts = odeset('JPattern',JP,'reltol',1e-9,'AbsTol',1e-9);
[T,U] = ode15s(F, T, uinit,opts);

% Plot solutions & Turing boundaries.
plotSols;
