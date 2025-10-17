using Genie.Router
using Genie.Renderer.Html
using Genie.Requests
using JSON
using .MEGA.Weather

# Home route
route("/") do
    serve_static_file("index.html")
end

# About route
route("/about") do
    serve_static_file("about.html")
end

# Weather Analysis route
route("/analysis") do
    location = params(:location, "")
    if isempty(location)
        return "No location specified"
    end

    lat, lon = Weather.get_lat_lon(location)
    if lat === nothing
        return "Location not found"
    end

    weather = Weather.get_weather(lat, lon)
    if weather === nothing
        return "Could not get weather data"
    end

    # Convert weather dict to JSON for JavaScript
    weather_json = JSON.json(weather)

    # Generate table rows as string
    table_rows = ""
    for (i, time) in enumerate(weather["hourly"]["time"])
        temp = weather["hourly"]["temperature_2m"][i]
        wind = weather["hourly"]["windspeed_10m"][i]
        table_rows *= "<tr><td>$time</td><td>$temp</td><td>$wind</td></tr>"
    end

    # Read the raw HTML file
    html_content = read("app/views/analysis.html", String)

    # Replace placeholders
    html_content = replace(html_content, "<%= location %>" => location)
    html_content = replace(html_content, "<%= weather_json %>" => weather_json)
    html_content = replace(html_content, "<%= table_rows %>" => table_rows)

    return html_content
end