include(joinpath(@__DIR__, "..", "src", "CapacityOptimizerJL.jl"))
using .CapacityOptimizerJL

result = build_dashboard()
println("Scenario: ", result["scenario_title"])
println("Coverage: ", result["coverage_pct"], "%")
println("Assigned units: ", result["total_assigned_units"])
println("Unserved units: ", result["total_unserved_units"])
