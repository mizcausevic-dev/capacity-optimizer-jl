using Test
using CapacityOptimizerJL

@testset "capacity optimizer" begin
    scenario = sample_scenario()
    result = optimize_capacity(scenario)

    @test result["total_assigned_units"] <= result["total_demand_units"]
    @test result["coverage_pct"] > 60
    @test length(result["lane_results"]) == 6
    @test length(result["facility_results"]) == 3
    @test any(item["unserved_units"] > 0 for item in result["lane_results"])
end
