function rc = ContinueFold(f, params)
%x0 is needed to make vectors the right size.
x0 = 0*linspace(0,1,params.N)';
r = 0.1 +x0; qc = 1+x0;
U = RunSimulation(r, qc, f, params,1e-2*randn(params.N,1));
U = U(end,:);
while(max(U)-min(U) > 1e-5)
    r = r-0.1;
    Uold = U;
    U = RunSimulation(r, qc, f, params,U);
    U = U(end,:);
end
r = r+0.1; U = Uold;
while(max(U)-min(U) > 1e-5)
    r = r-0.01;
    Uold = U;
    U = RunSimulation(r, qc, f, params,U);
    U = U(end,:);
end
r = r+0.01; U = Uold;
while(max(U)-min(U) > 1e-5)
    r = r-0.001;
    U = RunSimulation(r, qc, f, params,U);
    U = U(end,:);
end
rc = r(1)+0.0005;
end