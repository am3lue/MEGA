module MEGA

using Genie

include("Weather.jl")

const up = Genie.up
export up

function main()
  Genie.genie(; context = @__MODULE__)
end

end
