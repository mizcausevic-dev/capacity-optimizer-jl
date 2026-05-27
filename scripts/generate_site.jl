include(joinpath(@__DIR__, "..", "src", "CapacityOptimizerJL.jl"))
using .CapacityOptimizerJL

result = build_dashboard()
root = write_site(result)
println("Generated site at: ", root)
