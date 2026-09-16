# Create Data Visualization of Global CO2 Emissions in Tableau

## Project Overview

This project presents an interactive Tableau visualization of **global carbon dioxide (CO₂) emissions across countries and World Bank regions**.

The visualization uses a geographic map and proportional symbols to examine the distribution of CO₂ emissions across seven major regions:

- East Asia & Pacific
- Europe & Central Asia
- Latin America & Caribbean
- Middle East & North Africa
- North America
- South Asia
- Sub-Saharan Africa

The project was developed as an exploratory data visualization exercise using Tableau. It demonstrates how a multidimensional environmental dataset can be transformed from a structured spreadsheet into an interactive geographic visualization.

The dashboard allows users to move from a **global overview** to **regional exploration** and finally to **country-level inspection** through interactive filtering and tooltips.

View my project Dashboard on [Tableau Public](https://public.tableau.com/views/Week1_02_GlobalC02Emissions/Sheet1?:language=zh-CN&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

![img](https://private-user-images.githubusercontent.com/263587887/642105212-84fb9f6c-68d5-4bc5-b566-0ae6258c5e22.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3ODgxNTEyNDEsIm5iZiI6MTc4ODE1MDk0MSwicGF0aCI6Ii8yNjM1ODc4ODcvNjQyMTA1MjEyLTg0ZmI5ZjZjLTY4ZDUtNGJjNS1iNTY2LTBhZTYyNThjNWUyMi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwODMxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDgzMVQwNDM1NDFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lNmQ3MjhhZDNkNGY2YTdmODRiNjY0YmI0MTlmZjBiNzI3MWFiMDRiYWMxOWI3NDE5ZTRhOTUyZThkYjQ3ZGZmJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZyZXNwb25zZS1jb250ZW50LXR5cGU9aW1hZ2UlMkZwbmcifQ.xMSM68nkxZGkRNUvaeTCt4fQAK7ve0dnIqDq8oBljvo)

<div class='tableauPlaceholder' id='viz1787565206712' style='position: relative'><noscript><a href='#'><img alt='Global C02 Emissions ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;We&#47;Week1_02_GlobalC02Emissions&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Week1_02_GlobalC02Emissions&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;We&#47;Week1_02_GlobalC02Emissions&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='zh-CN' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1787565206712');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

---

## Objective

The primary objective of this project is to use Tableau to:

- Explore the geographic distribution of global CO₂ emissions.
- Visualize CO₂ emissions at the country level.
- Compare emissions across different world regions.
- Represent quantitative variables using visual properties such as size and color.
- Incorporate CO₂ emissions per capita as an additional analytical measure.
- Build an interactive dashboard that allows users to explore different geographic subsets of the data.

The project also demonstrates the basic principles of Tableau visualization, including connecting to Excel data, working with dimensions and measures, creating geographic visualizations, and customizing visual encodings.

---

## Analytical Questions

The visualization was designed around several exploratory questions:

1. How are CO₂ emissions geographically distributed across the world?
2. Which countries have relatively high levels of total CO₂ emissions?
3. How does the distribution of emissions vary across major geographic regions?
4. How can total CO₂ emissions and CO₂ emissions per capita provide different perspectives on emissions?
5. How can interactive filtering support exploration of a large country-level dataset?

Rather than producing a single predefined ranking, the dashboard is designed as an **interactive exploratory visualization**, allowing users to investigate patterns at different geographic levels.

---

# Dataset

The project uses the Excel workbook:

```text
CO2-Dataset.xlsx
```

The workbook contains multiple sheets representing different stages and versions of the CO₂ dataset, including raw data, pivoted data, cleaned data, CO₂-per-capita data, and country metadata.

The main cleaned dataset used for visualization contains country-level observations and quantitative CO₂ measures.

The core analytical variables include:

| Variable | Description |
|---|---|
| Country Code | Country identifier |
| Country Name | Country name |
| Region | World Bank regional classification |
| Year | Year of observation |
| CO₂ (kt) | Total CO₂ emissions measured in kilotons |
| CO₂ Per Capita | CO₂ emissions per person, measured in metric tons |

---

## Data Organization

The data are organized around country-year observations.

Conceptually, the analytical structure can be represented as:

```text
Country
│
├── Country Code
├── Country Name
├── Region
│
└── Year
      │
      ├── CO₂ Emissions (kt)
      └── CO₂ Emissions Per Capita
```

Each observation represents a country in a particular year, allowing the data to be aggregated and explored by country, region, and time.

---

# Data Preparation

The Excel workbook contains several stages of data preparation.

These include:

- Raw CO₂ emissions data
- Pivoted CO₂ emissions data
- Cleaned CO₂ data
- CO₂ data prepared for geographic splitting
- Raw CO₂-per-capita data
- Pivoted CO₂-per-capita data
- Country metadata

This organization separates the original data from transformed datasets prepared for visualization.

The cleaned data provide the main structure required for Tableau to interpret:

- geographic dimensions,
- categorical dimensions,
- dates,
- and quantitative measures.

---

# Visualization Development Process

The visualization was developed progressively in Tableau, starting with a basic geographic representation and then adding quantitative encoding and interactivity.

## Step 1 — Connect Tableau to the Dataset

The Excel workbook was imported into Tableau Public through the **Files** connection option.

The workbook contains multiple sheets representing different stages of the dataset.

The relevant data preparation sheets include:

- `About`
- `CO2 (kt) for Split`
- `CO2 (kt) Pivoted`
- `CO2 (kt) RAW DATA`
- `CO2 (kt) Cleaned`
- `CO2 (kt) Per Capita (Pivoted)`
- `CO2 (kt) CO2 Per Capita RAW DATA`
- `Metadata - Countries`

The cleaned CO₂ dataset was selected as the primary source for the visualization.

---

## Step 2 — Identify Tableau Data Types

After loading the data, Tableau automatically interprets the data types of individual fields.

The main Tableau field types used in this project include:

| Tableau Field Type | Meaning |
|---|---|
| Numeric (`#`) | Quantitative values |
| String (`Abc`) | Text / categorical values |
| Geographic | Geographic dimensions such as countries |
| Date | Temporal information |

Correct interpretation of these field types is important because Tableau uses them to determine how data can be represented and analyzed.

For example, geographic fields can be directly used to generate maps, while numerical measures can be used to control properties such as size and color.

---

# Building the Geographic Visualization

## Step 3 — Create a Country-Level Map

The first visualization was created to display **CO₂ emissions by country**.

After selecting the relevant geographic dimension, Tableau automatically generated a world map containing points corresponding to countries represented in the dataset.

Initially, the country-level points were displayed with equal visual weight because no quantitative measure had yet been assigned to the marks.

This provided the geographic foundation for the visualization.

---

## Step 4 — Encode CO₂ Emissions Using Size

The measure:

```text
CO₂ (kt)
```

was then introduced as a visual encoding.

Assigning CO₂ emissions to the **Size** property causes the country-level points to scale according to the magnitude of emissions.

Conceptually:

```text
Larger point
    ↓
Higher total CO₂ emissions

Smaller point
    ↓
Lower total CO₂ emissions
```

This transforms the map from a simple geographic representation into a quantitative visualization.

Countries with substantially larger emissions become visually prominent, while countries with lower emissions remain visible as smaller points.

---

## Step 5 — Encode CO₂ Emissions Using Color

CO₂ emissions were also assigned to the **Color** property.

This adds a second visual channel for representing the same quantitative measure.

The resulting visualization uses:

- **Geographic position** → Country
- **Size** → CO₂ emissions
- **Color** → CO₂ emissions

Using both size and color increases the visual salience of large differences in emissions while preserving the geographic context of the data.

---

# Final Dashboard Design

The final dashboard extends the initial country-level map by organizing observations according to major geographic regions.

The seven regions represented are:

1. East Asia & Pacific
2. Europe & Central Asia
3. Latin America & Caribbean
4. Middle East & North Africa
5. North America
6. South Asia
7. Sub-Saharan Africa

Each region is presented within its own geographic section, allowing users to examine both the global distribution and regional differences in emissions.

<img width="2702" height="2928" alt="C02GlobalEmissions" src="https://github.com/user-attachments/assets/84fb9f6c-68d5-4bc5-b566-0ae6258c5e22" />

---

# Visual Encoding

The dashboard uses several visual channels to represent different dimensions of the data.

| Visual Element | Data Represented |
|---|---|
| Geographic position | Country |
| Circle size | CO₂ emissions (kt) |
| Circle color | CO₂ emissions (kt) |
| Regional grouping | World Bank region |
| Tooltip | Country, region, CO₂ emissions, CO₂ per capita |

The design therefore combines **spatial, quantitative, categorical, and interactive information** within a single visualization.

---

# Regional Organization

The visualization groups countries into seven major World Bank regions.

This regional structure provides an additional analytical level between the global map and individual countries.

Instead of treating every country as an isolated observation, users can investigate patterns within broader geographic groups.

For example, selecting:

```text
East Asia & Pacific
```

allows the user to focus on the countries belonging to that region and examine their relative emissions.

This makes it possible to move between:

```text
Global Level
      ↓
Regional Level
      ↓
Country Level
```

---

# Interactive Country-Level Exploration

Each country represented by a point on the map is interactive.

When the user hovers over a country, Tableau displays additional information through a tooltip.

The tooltip includes:

- **Country Name**
- **Region**
- **CO₂ emissions (kt)**
- **CO₂ emissions per capita (metric tons)**

This allows users to obtain detailed numerical information without displaying all values directly on the map.

The design follows an **overview-first, details-on-demand** approach:

```text
Visual overview
      ↓
Identify an interesting country
      ↓
Hover over the country
      ↓
Inspect detailed measurements
```

---

# Regional Filtering

The dashboard supports interactive regional filtering.

Users can select a region and choose:

```text
Keep Only
```

to isolate the selected geographic group.

For example:

```text
Select "North America"
        ↓
Keep Only
        ↓
View countries within North America
```

This interaction allows users to dynamically change the scope of the analysis without creating separate dashboards for each region.

---

# CO₂ Emissions

The primary quantitative measure is:

```text
CO₂ (kt)
```

which represents total CO₂ emissions in kilotons.

The visualization contains a very wide range of emission values, approximately:

```text
304 kt → 244,402,143 kt
```

The large range reflects the substantial differences in total emissions between countries and makes quantitative visual encoding particularly important.

The proportional-symbol approach allows these differences to be communicated visually while retaining geographic information.

---

# CO₂ Emissions Per Capita

The dataset also contains:

```text
CO₂ Per Capita
```

measured in metric tons per person.

This variable is provided through the interactive tooltip as a complementary measure.

Total CO₂ emissions and CO₂ emissions per capita represent different analytical perspectives.

### Total CO₂ Emissions

Measures the overall amount of CO₂ associated with a country.

### CO₂ Emissions Per Capita

Adjusts emissions for population size and provides an individual-level perspective on emissions intensity.

Therefore, a country with high total emissions does not necessarily have the highest emissions per capita.

Including both measures allows users to avoid interpreting total emissions as the only indicator of a country's emissions profile.

---

# Visualization Design Rationale

A conventional bar chart could be used to rank countries according to total CO₂ emissions.

However, a ranking would remove an important dimension of the dataset: **geography**.

Because emissions are associated with economic activity, population, industrialization, energy consumption, and regional development, geographic context provides meaningful analytical information.

The map therefore allows users to investigate two related questions:

> **Which countries have higher CO₂ emissions?**

and:

> **Where are those countries geographically located?**

The regional grouping and filtering functionality then provides an additional layer of comparison.

---

# Analytical Insights

The visualization reveals several broad patterns.

## 1. CO₂ emissions are highly unevenly distributed

The proportional-symbol map makes the substantial differences between countries immediately visible.

A relatively small number of countries account for very large amounts of total emissions, while many countries appear as comparatively small points.

---

## 2. Geographic concentration is visible

The map makes it possible to identify geographic clusters of countries with relatively high emissions.

This spatial perspective would be difficult to obtain from a conventional table or ranking alone.

---

## 3. Regional differences become easier to explore

The seven-region structure allows users to compare patterns across broader geographic areas.

Users can examine not only individual countries but also the overall distribution of observations within each region.

---

## 4. Total emissions and per-capita emissions provide complementary information

The inclusion of CO₂ per capita provides an important analytical distinction.

A country can have:

- high total emissions but moderate emissions per capita,
- relatively low total emissions but high emissions per capita,
- or low values for both measures.

This demonstrates why multiple measures can be useful when interpreting environmental data.

---

# Exploratory Analysis Workflow

The overall workflow of the project can be summarized as:

```text
World Bank CO₂ Data
        ↓
Excel Data Preparation
        ↓
Raw / Pivoted / Cleaned Data
        ↓
Connect Dataset to Tableau
        ↓
Identify Dimensions and Measures
        ↓
Create Geographic Map
        ↓
Map Countries
        ↓
Encode CO₂ Using Size
        ↓
Encode CO₂ Using Color
        ↓
Add Regional Organization
        ↓
Add Interactive Tooltips
        ↓
Add Regional Filtering
        ↓
Interactive Global CO₂ Dashboard
```

This workflow demonstrates how a structured environmental dataset can be transformed into an interactive analytical visualization.

---

# Data Visualization Concepts Demonstrated

This project demonstrates several fundamental concepts in data visualization and Tableau.

## Dimensions

Dimensions such as:

- Country
- Country Code
- Region
- Year

are used to define the structure and grouping of observations.

## Measures

Quantitative measures such as:

- CO₂ (kt)
- CO₂ Per Capita

are used to represent numerical characteristics of the observations.

## Geographic Visualization

Country-level geographic dimensions are used to construct a world map.

## Quantitative Encoding

CO₂ emissions are represented through:

- Size
- Color

## Interactive Exploration

Tooltips and regional filtering allow users to inspect different levels of the dataset interactively.

---

# Tools & Technologies

- **Tableau Public** — Interactive visualization and dashboard development
- **Microsoft Excel** — Data storage and preparation
- **World Bank Data** — Source of international CO₂ indicators
- **Geospatial Visualization** — Country-level mapping
- **Interactive Filtering** — Regional exploration
- **Data Visualization** — Quantitative and categorical visual encoding

---

# Tableau Public Dashboard

**Interactive Dashboard:**

[View Global CO₂ Emissions on Tableau Public](https://public.tableau.com/app/profile/keman.xiang/viz/Week1_02_GlobalC02Emissions/Sheet1)

---

# Project Structure

```text
Global-CO2-Emissions/
│
├── README.md
│
├── data/
│   └── CO2-Dataset.xlsx
│
├── dashboard/
│   └── Global-CO2-Emissions.twb
│
└── images/
    └── Global-CO2-Emissions.png
```

---

# Skills Demonstrated

This project demonstrates practical experience with:

- Tableau Public
- Data visualization
- Geospatial visualization
- Excel data preparation
- Data cleaning and restructuring
- Working with dimensions and measures
- Geographic data interpretation
- Quantitative visual encoding
- Proportional-symbol mapping
- Color encoding
- Interactive tooltips
- Interactive filtering
- Regional aggregation
- Exploratory data analysis
- Multivariate visualization
- Dashboard design

More broadly, the project demonstrates the ability to transform a multidimensional international dataset into an interactive visualization that supports **exploration, comparison, and interpretation at multiple geographic levels**.

---

# Conclusion

The **Global CO₂ Emissions** project transforms country-level international emissions data into an interactive geographic visualization.

Starting from an Excel-based dataset, the project demonstrates a complete visualization workflow: data preparation, dataset connection, identification of dimensions and measures, geographic mapping, quantitative encoding, and interactive dashboard development.

By combining **geographic position, proportional symbols, color encoding, regional organization, tooltips, and interactive filtering**, the dashboard allows users to explore CO₂ emissions from multiple perspectives.

The resulting visualization supports a progression from:

```text
Global Overview
      ↓
Regional Comparison
      ↓
Country-Level Exploration
      ↓
Detailed CO₂ / Per-Capita Analysis
```

The project demonstrates not only the ability to use Tableau as a visualization tool, but also an understanding of how **data structure, visual encoding, geographic context, and user interaction can be combined to support exploratory data analysis**.
