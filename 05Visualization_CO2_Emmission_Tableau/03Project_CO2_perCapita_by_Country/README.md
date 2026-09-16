# CO₂ Emissions per Capita by Country — Integrating Multiple Datasets in Tableau

## Project Overview

This project demonstrates how Tableau can be used to combine multiple independent datasets through **JOINs** and transform them into an interactive geographic visualization.

The primary visualization presents **CO₂ emissions per capita for individual countries** on a global map. Countries are colored according to their CO₂ emissions per capita, using a continuous green-to-red color scale:

- **Green** → lower CO₂ emissions per capita
- **Red** → higher CO₂ emissions per capita
- **Range:** 0.00–62.00 metric tons per capita

The project goes beyond creating a map from a single dataset. Its main analytical and technical focus is the integration of **four separate Excel data sources** into a unified Tableau data model.

This project demonstrates practical skills in:

- Multi-source data integration
- Cross-dataset JOINs in Tableau
- Data type standardization
- Geographic visualization
- Data preparation and cleaning
- Interactive tooltips
- Continuous color encoding
- Handling incomplete datasets
- Working with country-year panel data
- Building reproducible Tableau workflows

---

## Tableau Visualization

**Interactive Tableau visualization:**

View my project Dashboard on [Tableau Public](https://public.tableau.com/app/profile/keman.xiang/viz/Week2_01_CO2_DATA/Sheet1)

The published visualization is available on Tableau Public and allows users to explore CO₂ emissions per capita geographically.

<div class='tableauPlaceholder' id='viz1787832549064' style='position: relative'><noscript><a href='#'><img alt='Sheet 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;We&#47;Week2_01_CO2_DATA&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Week2_01_CO2_DATA&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;We&#47;Week2_01_CO2_DATA&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='zh-CN' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1787832549064');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

---

## Project Objective

The objective of this project was to create a visualization of **CO₂ emissions per capita for each country** while working with information distributed across multiple data sources.

The project was designed around a policy-research scenario:

> Imagine working as a data analyst at a policy research institute. The organization needs to analyze CO₂ emissions per capita across countries while also having access to supporting information about energy use, population, and GDP.

Instead of manually merging the datasets outside Tableau, the project demonstrates how Tableau can connect multiple sources and combine them through JOIN operations.

The final visualization focuses on the geographic distribution of **CO₂ emissions per capita**, while the integrated data model also contains supporting variables such as:

- CO₂ emissions
- CO₂ emissions per capita
- Energy use per capita
- Total population
- Current GDP
- Country
- Region
- Year

This structure provides a foundation for extending the analysis beyond the current visualization.

---

## Data Sources

The project uses four separate Excel workbooks.

| Dataset | Primary Content | Key Fields |
|---|---|---|
| `CO2-Dataset.xlsx` | CO₂ emissions and CO₂ emissions per capita | Country Name, Country Code, Region, Year, CO₂ (kt), CO₂ Per Capita |
| `Energy-data.xlsx` | Energy consumption per capita | Country, Year, Energy use |
| `gdptotal.xlsx` | Current GDP | Country, Year, Current GDP |
| `totalpopulation.xlsx` | Total population | Country, Year, Population Total |

The four files represent different aspects of country-level economic, demographic, energy, and environmental data.

### CO₂ Dataset

The main CO₂ workbook contains several worksheets, including:

- `CO2 Data Cleaned`
- `CO2 (kt) Pivoted`
- `CO2 (kt) RAW DATA`
- `CO2 Per Capita RAW DATA`
- `CO2 Per Capita (Pivoted)`
- `Metadata - Countries`

The primary analytical table used for the visualization is:

`CO2 Data Cleaned`

Its key fields include:

- `Country Code`
- `Country Name`
- `Region`
- `Year`
- `CO2 (kt)`
- `CO2 Per Capita (metric tons)`

The source workbook identifies the CO₂ indicators as World Bank indicators for CO₂ emissions in kilotons and CO₂ emissions in metric tons per capita.

### Energy Dataset

`Energy-data.xlsx` contains country-year observations for:

`Energy use (kg of oil equivalent per capita)`

The primary fields are:

- `Country`
- `year`
- `Energy use (kg of oil equivalent per capita)`

### GDP Dataset

`gdptotal.xlsx` contains country-year observations for:

`current GDP`

The primary fields are:

- `country`
- `year`
- `current GDP`

### Population Dataset

`totalpopulation.xlsx` contains country-year observations for:

`Population Total`

The primary fields are:

- `Country`
- `Year`
- `Population Total`

---

## Why Multiple Data Sources?

A common challenge in real-world data analysis is that the variables required for an analysis are rarely stored in a single perfectly structured table.

In this project, the environmental, energy, economic, and demographic information is distributed across different files.

For example:

- CO₂ emissions are contained in the CO₂ dataset.
- Energy consumption is contained in the energy dataset.
- GDP is contained in the GDP dataset.
- Population is contained in the population dataset.

Manually extracting and merging these datasets before every analysis would be inefficient and difficult to maintain.

Instead, Tableau can combine related tables using common fields.

This project therefore treats **data integration itself as an important part of the analytical workflow**, rather than simply treating Tableau as a chart-making tool.

Tableau's JOIN functionality combines related tables through shared fields. In this project, country and year provide the common structure needed to connect the four sources. Tableau also requires fields used in a JOIN clause to have compatible data types, making data-type standardization an important part of the workflow.

---

## Data Integration Workflow

### Step 1 — Load the Four Data Sources

The four Excel workbooks were connected to Tableau:

```text
CO2-Dataset.xlsx
        │
        ├── CO2 Data Cleaned
        ├── CO2 (kt) Pivoted
        ├── CO2 (kt) RAW DATA
        ├── CO2 Per Capita RAW DATA
        └── Metadata - Countries

Energy-data.xlsx
        │
        └── Energy

gdptotal.xlsx
        │
        └── gdptotal

totalpopulation.xlsx
        │
        └── totalpopulation
```
The result is a Tableau data model containing multiple connections.

---

### Step 2 — Prepare the CO₂ Data
The CO2 Data Cleaned worksheet was selected as the primary CO₂ table. <br>

It provides the country-level structure required for the analysis:
```
Country Code
Country Name
Region
Year
CO2 (kt)
CO2 Per Capita (metric tons)
```
The dataset contains a longer historical period, extending from 1960 through 2011.<br>

However, the supporting energy, GDP, and population datasets cover a different time period.<br>

Therefore, the usable intersection of the datasets for this project is: <b>2000–2011</b><br>

This is an important data-preparation consideration: the analysis does not simply assume that all four datasets have identical temporal coverage.

---

### Step 3 — JOIN CO₂ Data with Energy Data
The first JOIN connects the CO₂ data with the energy dataset.<br>
The two tables are matched using:
```
Year + Countr
```
Conceptually:
```
CO2 Data Cleaned
        │
        │ Year
        │ Country Name
        ▼
Energy
        │
        └── Energy use (kg of oil equivalent per capita)
```
The country field names differ between the two sources:
```
CO2 Data Cleaned → Country Name
Energy           → Country
```
Therefore, the corresponding fields were explicitly selected as the JOIN keys.<br>
The year fields were also standardized so that the corresponding JOIN fields use compatible date types.

---

### Step 4 — JOIN the GDP Dataset
The GDP dataset was then added to the integrated data source.
The JOIN uses:
```
Year + Country
```
The corresponding country fields are:
```
CO2 Data Cleaned → Country Name
gdptotal         → Country1
```
The GDP dataset contributes:
```
Current GDP
```
to the integrated country-year dataset.

---

### Step 5 — JOIN the Population Dataset
Finally, the population dataset was added.
The JOIN again uses:
```
Year + Country
```
The corresponding fields are:
```
CO2 Data Cleaned → Country Name
totalpopulation  → Country
```
This adds:
```
Population Total
```
to the integrated dataset.

---

### Integrated Data Model
After completing the JOIN operations, the conceptual structure of the dataset becomes:
```
                    ┌─────────────────────┐
                    │   CO2 Data Cleaned  │
                    │                     │
                    │ Country             │
                    │ Year                │
                    │ Region              │
                    │ CO2 (kt)             │
                    │ CO2 Per Capita      │
                    └──────────┬──────────┘
                               │
                 ┌─────────────┼─────────────┐
                 │             │             │
                 ▼             ▼             ▼
          ┌────────────┐ ┌────────────┐ ┌───────────────┐
          │   Energy   │ │  gdptotal  │ │ totalpopulation│
          │            │ │            │ │               │
          │ Energy     │ │ Current    │ │ Population    │
          │ use        │ │ GDP        │ │ Total         │
          └────────────┘ └────────────┘ └───────────────┘

                JOIN KEYS:
              Country + Year
```
This produces a richer analytical structure in which environmental, economic, energy, and demographic variables can be examined together.

---

## Data-Type Standardization
Data integration also required attention to Tableau’s automatic field-type detection.
#### Year
The year fields from the different datasets were standardized as compatible date fields.<br>
This is necessary because Tableau JOIN fields must use compatible data types.
#### Energy Use
The Energy use field was originally interpreted as string data.<br>
It was converted to:
```
Number (decimal)
```
#### Current GDP
The current GDP field was also originally interpreted as string data.<br>
It was converted to:
```
Number (whole)
```
These transformations ensure that the integrated data can be used correctly as quantitative measures.

---

## Handling Missing Data
The source datasets do not contain complete information for every country and every year.<br>

In particular, the CO₂ dataset extends back to 1960, while the supporting energy, GDP, and population datasets begin later.<br>

The project therefore does not attempt to artificially fill all missing historical observations.<br>

Instead, the analysis focuses on the period where the datasets overlap: <b>2000–2011</b>
This is appropriate for the project objective because the required supporting information is available within this common period.<br>

This also demonstrates an important analytical principle:<br>

Missing data should be evaluated in the context of the research question rather than automatically imputed or discarded.

## Visualization Design
### Global CO₂ Emissions Per Capita Map
The final visualization is a geographic map showing CO₂ emissions per capita for individual countries.<br>

Each country is represented geographically and colored according to its CO₂ emissions per capita.<br>

#### Measure
The primary measure is:
```
CO2 Per Capita (metric tons)
```
#### Value Range
The visualization uses a standardized color range of:
```
0.00 → 62.00 metric tons per capita
```
#### Color Encoding
A diverging green-to-red color scale is used:
```
Lower emissions  ─────────────────── Higher emissions
      Green              →              Red
```
This makes differences between countries visually apparent.<br>

Countries with relatively low CO₂ emissions per capita appear toward the green end of the scale, while countries with relatively high emissions per capita appear toward the red end.<br>

The color scale was explicitly configured from approximately 0 to 62 to provide a consistent visual range.

---

### Geographic Encoding
The country dimension is mapped geographically using Tableau’s geographic capabilities.<br>

The map allows the viewer to immediately identify spatial patterns in emissions.<br>

Instead of presenting countries only as rows in a table, the visualization answers a more intuitive question:<br>

<b>Where are higher and lower CO₂ emissions per capita concentrated geographically?</b><br>

This makes the visualization useful for exploratory analysis and comparative interpretation.

---

### Interactive Tooltip
When the user moves the cursor over a country, Tableau provides an interactive tooltip containing information associated with that country.<br>

The visualization is therefore not limited to static color encoding. The tooltip provides a more precise way to inspect individual observations.<br>

The key information presented is:
```
Country Name
CO2 Per Capita (metric tons)
```
The combination of:
* geographic position,
* color,
* and interactive tooltip<br>

allows users to move between high-level global patterns and individual country-level values.

---

### Visualization Construction
The visualization was constructed using the following Tableau workflow.<br>

1. <b>Add Country to the Map</b>
Country Name was placed on the map’s geographic detail.<br>
This generated country-level geographic marks.

2. <b>Encode CO₂ Per Capita Using Color</b>
CO2 Per Capita was placed on the Color property.<br>
This changed the map from a simple geographic representation into a quantitative thematic map.

3. <b>Configure the Color Palette</b>
A diverging Red–Green palette was selected and reversed so that:
```
Low CO₂ per capita → Green
High CO₂ per capita → Red
```

4. <b>Configure the Color Range</b>
The color legend was manually configured with: Start = 0, End = 62<br>
This improves consistency in interpreting the map.

5. <b>Add Year Filtering</b>
The Year field was added to the Filters shelf.<br>
The relevant analysis period is: <b>2000–2011</b><br>
This aligns the visualization with the period shared by the integrated datasets.

---

## Key Analytical Questions
The visualization is designed to support several exploratory questions.
### Geographic Comparison
Which countries have relatively high or low CO₂ emissions per capita?
### Spatial Patterns
Are higher per-capita emissions concentrated in particular geographic areas?
### Cross-Country Comparison
How large are the differences in emissions per person between countries?
### Data Integration
How can environmental data be combined with energy, GDP, and population data to create a richer analytical dataset?
### Temporal Analysis
How does the country-level CO₂ emissions profile change across the 2000–2011 period?

---

## Skills Demonstrated
This project demonstrates several skills that are relevant to data analytics and research-oriented work.
### Tableau
* Tableau Public
* Data Source configuration
* Multiple data connections
* Physical-layer JOINs
* Geographic visualization
* Marks and geographic dimensions
* Color encoding
* Continuous color scales
* Interactive tooltips
* Filters
* Data type conversion
* Data preparation
### Data Integration
* Combining multiple Excel workbooks
* Cross-source JOINs
* Joining on multiple fields
* Country-year panel data
* Standardizing data types
* Handling inconsistent field names
* Working with missing values
* Identifying common time periods across datasets
### Data Visualization
* Choropleth-style geographic visualization
* Quantitative color encoding
* Sequential/diverging color interpretation
* Geographic pattern recognition
* Interactive exploratory visualization
* Country-level comparative analysis
### Analytical Thinking
* Defining an appropriate analytical time period
* Evaluating missing data
* Understanding the implications of joining datasets
* Separating data preparation from visualization
* Designing visual encodings around an analytical question

---

## Technical Workflow Summary
The overall workflow can be summarized as:
```
1. Load four Excel datasets
            ↓
2. Inspect available sheets and fields
            ↓
3. Select CO2 Data Cleaned as the primary table
            ↓
4. Standardize Year fields
            ↓
5. JOIN Energy using Country + Year
            ↓
6. JOIN GDP using Country + Year
            ↓
7. JOIN Population using Country + Year
            ↓
8. Convert Energy use and GDP to numeric fields
            ↓
9. Identify the common analysis period
            ↓
10. Create a country-level geographic map
            ↓
11. Encode CO2 Per Capita using color
            ↓
12. Configure 0–62 color range
            ↓
13. Add interactive country-level tooltips
            ↓
14. Publish the visualization to Tableau Public
```

---

## Project Structure
```
Tableau-CO2-Emissions-Per-Capita/
│
├── README.md
│
├── screenshot/
│   └── CO2_Emissions_Per_Capita.png
│
├── data/
│   ├── CO2-Dataset.xlsx
│   ├── Energy-data.xlsx
│   ├── gdptotal.xlsx
│   └── totalpopulation.xlsx
│
└── tableau/
    └── CO2_Emissions_Per_Capita.twb
```

---

## Project Outcome
The final result is an interactive global map that transforms country-level CO₂ emissions per capita into an intuitive geographic visualization.<br>

More importantly, the project demonstrates the complete analytical workflow behind the visualization:
```
Multiple Raw Data Sources
          ↓
Data Preparation
          ↓
Country-Year JOINs
          ↓
Integrated Analytical Dataset
          ↓
Geographic Encoding
          ↓
Interactive Visualization
          ↓
Exploratory Analysis
```
The project therefore demonstrates my ability in broader data integration and analytical workflow using Tableau.

---

## Relationship to Other Tableau Projects in This Portfolio
This project shares the <b>CO2.xlsx</b> source with another CO₂ visualization project in this portfolio, but the analytical purpose is different.

### Project 2 — Global CO₂ Emissions
The second project primarily focuses on:
* Exploring the CO₂ dataset itself
* Geographic distribution of total CO₂ emissions
* Regional grouping
* Country-level CO₂ values
* Interactive geographic exploration

### Project 3 — CO₂ Emissions Per Capita
This project focuses on:
* Combining four independent datasets
* Building JOINs using country and year
* Integrating environmental, energy, economic, and demographic information
* Preparing a unified country-year analytical dataset
* Visualizing CO₂ emissions per capita
* Demonstrating a more advanced data-integration workflow

Therefore, although both projects use CO₂ data and geographic visualization, their primary learning objectives are different:
```
Project 2
CO₂ Dataset
     ↓
Geographic Visualization
     ↓
Explore CO₂ Emissions

Project 3
CO₂ + Energy + GDP + Population
     ↓
JOIN / Data Integration
     ↓
Integrated Dataset
     ↓
CO₂ Per Capita Visualization
```

This distinction is important because Project 3 demonstrates an additional layer of analytical capability beyond visualization: <b>integrating heterogeneous datasets before analysis</b>.

---

## Limitations and Considerations
Several considerations should be kept in mind when interpreting the visualization.

### Different Data Coverage
The four datasets do not necessarily cover exactly the same countries and years.
The common analytical period used for the integrated analysis is approximately: <b>2000–2011</b>

### Missing Observations
Some country-year observations contain missing values.<br>

The visualization should therefore be interpreted as representing the available observations rather than assuming complete global coverage.<br>

### Per-Capita vs. Total Emissions
CO₂ emissions per capita and total CO₂ emissions answer different questions.<br>

A country can have:
* high total CO₂ emissions but relatively moderate emissions per person, or
* relatively low total emissions but high emissions per person.<br>

This project intentionally focuses on: <b>CO₂ emissions per capita</b>, rather than total national CO₂ production.

---

## Future Extensions
The integrated data model provides opportunities for further analysis.
Potential extensions include:
1. <b>CO₂ vs. GDP</b>
Investigate the relationship between economic output and CO₂ emissions per capita.

2. <b>CO₂ vs. Energy Use</b>
Examine whether countries with higher energy consumption per capita also have higher CO₂ emissions per capita.

3. <b>Population and Total Emissions
Compare population size with total CO₂ emissions.

4. <b>Time-Series Analysis</b>
Analyze how individual countries’ emissions changed between 2000 and 2011.

5. <b>Regional Comparison</b>
Aggregate countries into regions and compare their emissions profiles.

6. <b>Economic and Environmental Patterns</b>
Use GDP, energy consumption, population, and CO₂ indicators together to investigate broader relationships between economic development and environmental impact.

---

## Tools & Technologies
* Tableau Public
* Microsoft Excel
* Data Visualization
* Data Integration
* Geographic Mapping
* JOIN-based Data Modeling

---

## Visualization
### Tableau Public
[Interactive visualization: View CO₂ Emissions Per Capita by Country on Tableau Public](https://public.tableau.com/shared/?:display_count=n&:origin=viz_share_link)⁠
<img width="2736" height="1386" alt="CO2_Emission_per_Capita_by _Country" src="https://github.com/user-attachments/assets/d4401a1d-6053-4281-96c7-3e4be001287b" />

---
 
## Conclusion
This project demonstrates an end-to-end Tableau workflow for transforming multiple independent datasets into an interactive analytical visualization.<br>

The central technical challenge was not simply creating a world map, but <b>building a coherent analytical dataset from four different Excel sources</b>.<br>

By joining the datasets through shared country and year fields, standardizing data types, identifying the appropriate common time period, and then mapping CO₂ emissions per capita geographically, the project illustrates how data preparation, integration, and visualization work together in an analytical workflow.<br>

The final visualization provides an accessible way to compare CO₂ emissions per capita across countries while demonstrating practical experience with:<br>

<b>multi-source data integration → JOINs → data preparation → geographic visualization → interactive exploration.<b>
