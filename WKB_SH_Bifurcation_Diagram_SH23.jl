using Revise
using SparseArrays
import LinearAlgebra: I, norm
using BifurcationKit
using Plots
using JLD2
const BK = BifurcationKit

# discretisation
N = 400
l = 20.0
X = -l .+ 2l / N * (0:N-1) |> collect
h = X[2] - X[1]
pmin = -0.6
pmax = 0.1

# define a norm
const _weight = rand(N)
normweighted(x) = norm(_weight .* x)

# boundary condition
#Δ = spdiagm(0 => -2ones(N), 1 => ones(N - 1), -1 => ones(N - 1)) / h^2
#L1 = -(I + Δ)^2

fd_Δ = spdiagm(0 => -2ones(N), 1 => ones(N - 1), -1 => ones(N - 1))
fd_Δ[1, 1] = -1
fd_Δ[N, N] = -1
Δ = fd_Δ / h^2
L1 = -(I + Δ)^2

# functional of the problem
function R_SH(u, par)
    (; λ, ν, L1) = par
    out = similar(u)
    out .= L1 * u .+ λ .* u .+ ν .* u .^ 2 - u .^ 3
end

# jacobian
Jac_sp(u, par) = par.L1 + spdiagm(0 => par.λ .+ 2 .* par.ν .* u .- 3 .* u .^ 2)

# second derivative
d2R(u, p, dx1, dx2) = @. p.ν * 2 * dx1 * dx2 - 3 * 2u * dx1 * dx2

# third derivative
d3R(u, p, dx1, dx2, dx3) = @. p.ν * 0dx3 * dx1 * dx2 - 3 * 2 * dx1 * dx2 * dx3

# parameters associated with the equation
parSH = (λ=-0.7, ν=2.0, L1=L1)

# initial condition
sol0 = zeros(N)

# Bifurcation Problem
prob = BifurcationProblem(R_SH, sol0, parSH, (@optic _.λ); J=Jac_sp,
    record_from_solution=(x, p; k...) -> (n2=sqrt(h)*norm(x), nw=normweighted(x), s=sum(x), s2=x[end÷2], s4=x[end÷4], s5=x[end÷5]),
    plot_solution=(x, p; kwargs...) -> (plot!(X, x; ylabel="solution", label="", kwargs...)))

opts = ContinuationPar(dsmin=0.00001, dsmax=0.01, ds=0.01, p_max=pmax,
    newton_options=NewtonPar(max_iterations=2000, tol=1e-9),
    max_steps=2000, plot_every_step=1000,
    n_inversion=8, tol_bisection_eigenvalue=1e-17, dsmin_bisection=1e-9)

function cb(state; kwargs...)
    _x = get(kwargs, :z0, nothing)
    fromNewton = get(kwargs, :fromNewton, false)
    if ~fromNewton
        # if the residual is too large or if the parameter jump
        # is too big, abort continuation step
        return sqrt(h)*norm(_x.u - state.x) < h*20.5 && abs(_x.p - state.p) < 0.05
    end
    true
end

args = (verbosity=0,
    plot=false,
    callback_newton=cb, halfbranch=true,
)

function optrec(x, p, l; opt=opts)
    level = l
    if level <= 1
        return setproperties(opt; max_steps=500,
            nev=N, detect_loop=false)
    else
        return setproperties(opt; max_steps=500,
            nev=N, detect_loop=true)
    end
end

diagram = @time bifurcationdiagram(re_make(prob, params=@set parSH.λ = pmin),
    PALC(),
    # here we specify a maximum branching level of 4
    3, optrec; args...)

#    plot(diagram; plotfold=false,
#    markersize=2, putspecialptlegend=false, plotspecialpoints=false,
#    xlims=(-0.55, pmax), label="", vars = (:stable))
#title!("#branches = $(size(diagram))")





