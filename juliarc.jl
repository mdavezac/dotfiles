using FactCheck
function retest(x::String)
  FactCheck.clear_results()
  reload(x)
  include(joinpath(Pkg.dir(x), "test", "runtests.jl"))
end
