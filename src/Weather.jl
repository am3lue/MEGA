module Weather

using HTTP
using JSON

function get_lat_lon(location)
  try
    url = "https://geocoding-api.open-meteo.com/v1/search?name=$(location)"
    response = HTTP.get(url)
    data = JSON.parse(String(response.body))
    if haskey(data, "results") && !isempty(data["results"])
      return data["results"][1]["latitude"], data["results"][1]["longitude"]
    else
      return nothing, nothing
    end
  catch e
    println("Error in get_lat_lon: ", e)
    return nothing, nothing
  end
end

function get_weather(latitude, longitude)
  try
    url = "https://api.open-meteo.com/v1/forecast?latitude=$(latitude)&longitude=$(longitude)&hourly=temperature_2m,windspeed_10m"
    response = HTTP.get(url)
    JSON.parse(String(response.body))
  catch e
    println("Error in get_weather: ", e)
    return nothing
  end
end

end
