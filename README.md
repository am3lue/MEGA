
# MEGA - Meteorological and Environmental General Analyst

## Project Overview
**MEGA** (Meteorological and Environmental General Analyst) is a web-based application designed to fetch, analyze, and visualize **weather and environmental data** for a given location. The platform allows users to view **hourly temperature and windspeed trends** through interactive charts and tables.

The main goal of MEGA is to provide users with a **clear, accessible, and visual way** to understand local weather patterns and environmental conditions.

---

## Current Features
- Home page with location input.
- Analysis page displaying:
  - Interactive **line chart** for temperature and windspeed.
  - **Table view** for hourly weather data.
- About page describing the project.
- Simple, responsive user interface with navigation.

---

## Installation
1. Clone the repository:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the project folder:

   ```bash
   cd MEGA
   ```
3. Install Julia packages if not already installed:

   ```julia
   using Pkg
   Pkg.add(["Genie", "Genie.Renderer.Html", "HTTP", "JSON"])
   ```
4. Run the Genie app:

   ```julia
   using Genie
   Genie.loadapp()
   up()
   ```
5. Open your browser and navigate to:

   ```
   http://127.0.0.1:8000
   ```

---

## File Structure

```
MEGA/
├── assets/          # CSS, JS, images
├── routes.jl        # All routing logic
├── views/           # HTML templates (if using html files)
├── MEGA/
│   └── Weather.jl   # Functions for fetching and processing weather data
├── README.md        # Project documentation
└── Project.toml     # Julia project file
```

---

## Future Plans

MEGA is planned to evolve into a more advanced **Meteorological and Environmental General Analyst** platform. The roadmap includes:

1. **Expanded Weather Data**

   * Humidity, UV index, rainfall, pressure.
   * Multi-day forecasts with comparison to real-time data.

2. **Environmental Data Integration**

   * Air Quality Index (AQI).
   * Pollution and particulate matter data.

3. **Interactive Visualizations**

   * Multiple charts on one page.
   * Historical weather trends.
   * Wind rose diagrams.

4. **User Experience Enhancements**

   * Improved responsive design for mobile devices.
   * Clean UI with minimal filters (optional filters can be added later).

5. **Notifications and Alerts**

   * Weather warnings for extreme conditions.
   * Custom alerts for chosen locations.

---

## To-Do List

* [x] Home page with location input.
* [x] Analysis page showing temperature and windspeed chart.
* [x] Analysis table for hourly data.
* [ ] Integrate environmental data sources (AQI, humidity, etc.).
* [ ] Add multi-day weather forecasts.
* [ ] Implement responsive design improvements.
* [ ] Create more advanced interactive charts.
* [ ] Set up alerts for extreme weather conditions.
* [ ] Optimize data fetching and caching.
* [ ] Add user authentication (optional, future expansion).

---

## Credits

Created by **Blue Francis** and **Mercy Sostenes**
© 2025 MEGA. All rights reserved.

```

---

If you want, I can **also make a shorter “user-friendly” version** for GitHub that includes **badges, screenshots, and a simpler “what it does” section** so it looks professional on GitHub.  

Do you want me to do that version too?
```
