using Plots
using JLD2
using Revise
using SparseArrays
import LinearAlgebra: I, norm
using BifurcationKit
using LaTeXStrings

pmax = 0.05

plot()
function plot_Branch(br; plot_stabe=true, stable_branch_color=:red)
    line_widths = [stb ? 3 : 1 for stb in br.branch.stable]
    col = [stb ? stable_branch_color : :black for stb in br.branch.stable]
    branch_style = [stb ? :solid : :dash for stb in br.branch.stable]
    if(!plot_stabe)
        col = [stb ? stable_branch_color : :white for stb in br.branch.stable]
        line_widths = [stb ? 3 : 0 for stb in br.branch.stable]
    end
        plot!(br; color=col, linestyle=branch_style,plotfold=false, markersize=2,linewidth = line_widths,
        putspecialptlegend=false,plotspecialpoints=false, xlims=(-0.55, pmax), label="", dpi = 600)
end

plot_Branch(diagram.γ)


#Plot the main snake only
br = diagram.child[1]

plot_Branch(br.γ)
plot_Branch(br.child[1].γ)
plot_Branch(br.child[2].γ)

fontsize = 18;
plot!(;xlabel = L"r_h", ylabel = L"\Vert\! u\, \Vert_2",dpi = 600,xtickfontsize=fontsize,
ytickfontsize=fontsize,xguidefontsize=fontsize, yguidefontsize=fontsize-4,framestyle = :box,
ylimits=(-0.1,7),xlimits=(-0.55,pmax))

savefig("snaking_fig.png")