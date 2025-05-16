
# Urban Transit Delay Analysis – Lagos
*A data-driven dashboard project to support smarter transportation decisions*

---

## Problem Statement

Urban transportation systems in Lagos face persistent delays due to a variety of factors — including unpredictable traffic, weather conditions, and inconsistent scheduling. These delays reduce efficiency, frustrate commuters, and strain public infrastructure.  

As a data analyst, I wanted to explore how transit data could be used to uncover:
- When and where delays are most common  
- Which routes or vehicle types contribute to inefficiencies  
- How external factors like weather impact travel time  
- What actionable steps can be taken using real insights  

---

## Project Objective

The goal of this project is to simulate Lagos public bus transit data and analyze it through a well-designed Power BI dashboard that:
- Identifies delay patterns across time, routes, and weather conditions  
- Provides interactive, visual summaries for stakeholders  
- Supports data-informed decisions to improve route planning and resource allocation

---

## Tools Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data simulation, cleaning, and feature engineering |
| **Power BI** | Dashboard development and interactive visualization |

---

## Dataset Overview

A dataset of **2,000 simulated Lagos bus trips** was generated to reflect real-world transit behavior. Each record contains:

- **Trip ID, Route ID, Bus Stop ID**  
- **Scheduled vs Actual Arrival Time**  
- **Delay in Minutes**  
- **Passenger Count**  
- **Day of Week, Weather Condition**  
- **Latitude and Longitude** for geospatial mapping  
- **Bus Type**: Standard, Mini, Articulated

---

## Feature Engineering

New columns were created to enhance analysis:
- **Hour** (from scheduled arrival) — to study delay by time of day  
- **Delay_Flag** (0 or 1) — identifies delayed trips  
- **Delay_Category** — classifies delay as: No Delay, Short, Medium, Long  
- **Weekday** — extracted from `Scheduled_Arrival`

---

## Dashboard Components

The Power BI dashboard was structured to communicate key insights at a glance:

### Top-Level KPIs
- Total Trips
- % of Delayed Trips
- Average Delay (mins)
- Average Passenger Count

### Visuals
- **Line Chart** – Average Delay by Hour
- **Bar Chart** – Delay by Route
- **Donut Chart** – Delays by Weather
- **Stacked Column Chart** – Delay Category by Bus Type
- **Map** – Geographic delay hotspots across Lagos using Latitude & Longitude
- **Table** – Route performance with conditional formatting
- **Slicers** – Filter by Day, Bus Type, Route, Weather

---

## Key Insights

- **39% of trips were delayed**, with peaks in the early morning and evening rush hours  
- **Rainy conditions** significantly contributed to increased delays  
- **Articulated buses** had longer average delays than mini buses  
- **Routes LAG-201 and LAG-301** had the most delay-prone records  
- **Delay hotspots** were concentrated around CMS, Ojuelegba, and Lekki — suggesting urban congestion zones

---

## What This Project Demonstrates

- A complete analytics lifecycle: **data generation → transformation → visualization**  
- Ability to design meaningful **KPI-driven dashboards**  
- Real-world business thinking: using data to improve operations  
- **Technical fluency** across Python and Power BI  
- Understanding of geospatial analysis, trend modeling, and categorical comparison

---

## Deliverables

| File | Description |
|------|-------------|
| `lagos_transit_data.csv` | Simulated raw dataset |
| `lagos_transit_cleaned.csv` | Processed dataset with new features |
| `Lagos_Transit_Dashboard.pbix` | Power BI file with full visual report |
| `Urban_Transit_Dashboard.png` | Screenshot of completed dashboard |

---
 
