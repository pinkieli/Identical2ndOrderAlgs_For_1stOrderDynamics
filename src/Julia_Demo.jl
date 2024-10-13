module SDOF_mod

using Int1stODEs

using PyPlot
# ----------------------------------------------------------------------- #
const λ = 10.0
#
f(t) = [10 * cos(t / 10)]
R(u) = λ * u
K(u) = λ
const u₀ = 100.0
#
uₑ(t) =
    (u₀ - 1000 * λ / (1 + 100 * λ^2)) * exp(-λ * t) +
    100 * (10 * λ * cos(t / 10) + sin(t / 10)) / (1 + 100 * λ^2)
u̇ₑ(t) =
    (-λ) * (u₀ - 1000 * λ / (1 + 100 * λ^2)) * exp(-λ * t) +
    100 * (cos(t / 10) / 10 - λ * sin(t / 10)) / (1 + 100 * λ^2)
# ----------------------------------------------------------------------- #
function comparisons(algs, Δt)
    T = 100.0
    t = range(0, T, step = Δt)
    te = range(0, T, step = Δt / 100)
    #
    m = length(algs)
    n = length(t)
    #
    𝕦 = zeros(n, m + 1)
    𝕧 = zeros(n, m + 1)
    #
    𝕦[:, 1] = collect(t)
    𝕧[:, 1] = collect(t)
    # ----------------------------------------------------------------------- #
    for (i, ialg) in enumerate(algs)
        # uₙ, vₙ, ~ = solve(ialg, f, R, 1, K, t, [u₀])
        uₙ, vₙ, ~ = solve(ialg, f, R, 1, t, [u₀])
        #
        𝕦[:, i+1] = uₙ
        𝕧[:, i+1] = vₙ
    end
    #
    # --------------------------------- plot -------------------------------- #
    fig = figure("responses of SDOF")
    colors = ["ro-", "bv--", "ks--", "m*-", "g^-", "c>-"]
    #
    subplot(121)
    plot(te, uₑ.(te), linewidth = 2)
    for (i, ialg) in enumerate(algs)
        name = getAlgName(ialg)
        plot(𝕦[:, 1], 𝕦[:, i+1], colors[i], label = "$name")
    end
    # ylim(-50, 100)
    legend()
    #
    subplot(122)
    plot(te, u̇ₑ.(te), linewidth = 2)
    for (i, ialg) in enumerate(algs)
        name = getAlgName(ialg)
        plot(𝕧[:, 1], 𝕧[:, i+1], colors[i], label = "$name")
    end
    # ylim(-90, 60)
    legend()
    #
    return nothing
end


end


using .SDOF_mod

ρ1 = 0.5
ρ2 = 0.0
#
algs = [SS_V(ρ1,ρ2)]
Δt = 0.01
#
close("all")
SDOF_mod.comparisons(algs, Δt)
