include(joinpath(@__DIR__, "..", "src", "CapacityOptimizerJL.jl"))
using .CapacityOptimizerJL

result = build_dashboard()
root = write_site(result)

required = [
    joinpath(root, "index.html"),
    joinpath(root, "capacity-lane", "index.html"),
    joinpath(root, "constraint-matrix", "index.html"),
    joinpath(root, "allocation-posture", "index.html"),
    joinpath(root, "verification", "index.html"),
    joinpath(root, "docs", "index.html"),
    joinpath(root, "robots.txt"),
    joinpath(root, "sitemap.xml"),
    joinpath(root, "api", "dashboard.json"),
]

for path in required
    isfile(path) || error("Missing generated asset: " * path)
end

println("Smoke check passed for ", root)
