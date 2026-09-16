# Project: Average CO2 Per Capita and CO2 Production by Region

## Project Overview
This project focuses on exploring global carbon dioxide (CO2) emissions from two complementary perspectives:
1. <b>Average CO2 emissions per capita across countries</b>, visualized geographically using a global bubble map.
2. <b>CO2 production by region over time</b>, visualized as a multi-series line chart covering the period from 1960 to 2011.

The project demonstrates how the same underlying dataset can support different analytical questions when the visualization objective, aggregation level, and visual encoding are changed.

Rather than presenting a single overall measure of global emissions, this project focuses on the relationship between <b>geographic differences in per-capita emissions and long-term regional emission trends.</b>

The final Tableau dashboard combines these two visualizations into a single analytical view, allowing geographic patterns and temporal trends to be examined together.

View the [Interactive Dashboard here](https://public.tableau.com/views/DashboardsStarterTemplate_16768798373680/Dashboard1?:language=zh-CN&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

<img width="1298" height="1314" alt="Average_CO2_Per_Capita_and_CO2_Production_by_Region" src="https://github.com/user-attachments/assets/b8698d73-ead7-44d5-8ed3-bf82220f8c17" />

<div class='tableauPlaceholder' id='viz1788150835990' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Da&#47;DashboardsStarterTemplate_16768798373680&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='DashboardsStarterTemplate_16768798373680&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Da&#47;DashboardsStarterTemplate_16768798373680&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='zh-CN' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1788150835990');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.minWidth='420px';vizElement.style.maxWidth='650px';vizElement.style.width='100%';vizElement.style.minHeight='587px';vizElement.style.maxHeight='887px';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.minWidth='420px';vizElement.style.maxWidth='650px';vizElement.style.width='100%';vizElement.style.minHeight='587px';vizElement.style.maxHeight='887px';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='777px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

---

## Project Objectives
The main objective of this project was to design a Tableau dashboard that communicates two different dimensions of global CO2 emissions:<br>
* <b>Geographic variation</b>: How does average CO2 emissions per capita vary across countries?
* <b>Regional development over time</b>: How has CO2 production changed across different regions from 1960 to 2011?
<br>
These questions require different visual approaches.<br>
The first question is inherently geographic, so a <b>map-based visualization</b> provides an intuitive way to compare countries across the world.<br>
The second question concerns changes over time and differences between regions, making a <b>line chart</b> appropriate for showing historical trends and allowing regional trajectories to be compared.<br>
Together, the two views provide a more complete perspective than either visualization could provide independently.<br>

---

## Dataset
The project uses the CO2-Dataset, the same underlying dataset used in another project in this Tableau portfolio.<br>
Although the dataset overlaps with the earlier project, the analytical purpose of this project is different. The objective here is not to reproduce the previous dashboard, but to explore the dataset through a different combination of:<br>
* aggregation,
* geographic analysis,
* regional comparison,
* time-series visualization, and
* dashboard composition.
<br>
The dataset contains information related to CO2 emissions across countries and regions over multiple years.<br>
The historical coverage used in the regional time-series visualization extends from <b>1960 through 2011.</b><br>

---

## Visualizations
### 1. Average CO2 Per Capita — Global Bubble Map
The first visualization is a global bubble map showing <b>average CO2 emissions per capita by country.</b><br>
Each country is represented geographically, allowing the viewer to compare emission levels across different parts of the world.<br>
The visualization uses bubble size and visual encoding to communicate differences in average per-capita emissions. This makes it possible to quickly identify countries with relatively higher or lower levels of CO2 emissions per person.<br>

#### Why a Map?
A geographic map is particularly suitable for this question because emissions are associated with specific countries.<br>
Instead of displaying countries as an alphabetical list or using a conventional bar chart, the map preserves their geographic relationships. This allows regional patterns and spatial differences to become immediately visible.<br>
The visualization therefore emphasizes <b>where differences occur</b>, rather than only ranking countries numerically.<br>

#### Analytical Focus
The key measure in this visualization is <b>average CO2 emissions per capita</b>.<br>
This is important because total national emissions and per-capita emissions answer different questions.<br>
A country with a large population may produce a substantial amount of total CO2 while having a relatively lower emissions level per person.<br> Conversely, a country with a smaller population can have a much higher per-capita emission level.<br>
By using the per-capita measure, this visualization focuses on the emissions associated with the average individual rather than simply the total size of a country’s emissions.<br>
 
### 2. CO2 Production by Region, 1960–2011 — Line Chart
The second visualization examines <b>CO2 production by region from 1960 to 2011</b>.<br>
Unlike the first visualization, which focuses on geographic differences between countries, this chart focuses on <b>historical change</b>.<br>
Each region is represented as a line, with:<br>
* <b>Year</b> on the horizontal axis
* <b>CO2 production</b> on the vertical axis
* <b>Region</b> represented through separate lines
<br>
This structure allows the viewer to compare how CO2 production evolved across regions over the approximately five-decade period.<br>

#### Why a Line Chart?
A line chart is appropriate because the primary analytical question is about <b>change over time.</b><br>
Rather than looking at individual years independently, connecting observations chronologically makes broader patterns easier to identify, such as:
* long-term increases or decreases,
* periods of rapid change,
* differences in regional trajectories,
* convergence or divergence between regions, and
* relative differences in the scale of CO2 production.
<br>
The visualization therefore emphasizes <b>when and how emissions changed</b>, complementing the geographic perspective of the first visualization.<br>

---

## Dashboard Design
The final dashboard brings the two visualizations together in a vertically organized layout.<br>

### Upper Section — Geographic Perspective
The upper portion of the dashboard presents the <b>Average CO2 Per Capita</b> global bubble map.<br>
This provides an immediate geographic overview and establishes the spatial context of the dataset.<br>

### Lower Section — Temporal Perspective
The lower portion presents the <b>CO2 Production by Region</b> line chart.<br>
This shifts the viewer’s attention from geographic differences to historical regional trends.<br>

### Why Combine These Two Views?
The dashboard was designed around the idea that global CO2 emissions should not be interpreted from only one dimension.<br>
The map answers: <b>Where are per-capita emissions relatively high or low?</b><br>
The line chart answers: <b>How has CO2 production changed across regions over time?</b><br>
Placing these views together allows the dashboard to communicate both <b>spatial variation</b> and <b>temporal development</b>.<br>
This creates a more structured visualization narrative:<br>
<b>Global geographic comparison → Regional historical trends</b><br>

---

## Visualization Design Decisions
Several visualization design principles were considered during the construction of the dashboard.

### Geographic Encoding
The map uses geographic position as the primary visual encoding, allowing users to interpret emissions in their spatial context.

### Magnitude Encoding
Differences in visual magnitude are used to communicate differences in CO2 emissions per capita. This allows relatively high- and low-emission countries to be distinguished without requiring the viewer to read every individual value.

### Temporal Encoding
The line chart uses a continuous time axis to preserve the chronological structure of the data.<br>
This makes long-term regional trends easier to follow than a collection of independent categorical charts.

### Consistent Dashboard Structure
The two visualizations were arranged vertically to create a clear visual hierarchy.<br>
The map provides the broad geographic overview first, while the line chart provides a more detailed temporal comparison below it.<br>
Legends and dashboard elements were arranged to reduce unnecessary visual clutter and maintain a clear relationship between each chart and its corresponding encoding.

---

## Tableau Workflow
The project followed a structured visualization workflow.

### Step 1 — Load the Dataset
The CO2 dataset was loaded into Tableau as the primary data source.<br>
The data contains country, region, year, and CO2-related measures required for the visualizations.

### Step 2 — Examine the Available Dimensions and Measures
The relevant fields were identified for the two analytical views.<br>
For the geographic visualization, the focus was placed on:
* Country
* Geographic location
* CO2 emissions per capita
<br>
For the time-series visualization, the focus was placed on:
* Year
* Region
* CO2 production

### Step 3 — Construct the Geographic Visualization
A geographic view was created using country-level information.<br>
The relevant CO2 per-capita measure was aggregated to represent the average level for each country.<br>
The geographic marks were then configured to communicate differences in emission levels.

### Step 4 — Construct the Time-Series Visualization
A second worksheet was created to analyze regional CO2 production over time.<br>
Year was placed along the time axis, while CO2 production was used as the quantitative measure. Region was used to distinguish the different time-series lines.<br>
This produced a comparative view of regional emission trajectories from 1960 through 2011.

### Step 5 — Assemble the Dashboard
The two completed worksheets were combined into a single Tableau dashboard.<br>
The dashboard layout was organized so that the geographic visualization provides the initial overview, followed by the historical regional trend visualization.<br>
Additional attention was given to:
* chart positioning,
* legends,
* spacing,
* visual hierarchy, and
* overall readability.

### Step 6 — Refine the Presentation
The final stage focused on improving the dashboard’s presentation rather than adding unnecessary analytical complexity.<br>
The goal was to ensure that the visualizations communicate their respective questions clearly and that the dashboard functions as a coherent analytical composition rather than simply placing two charts next to each other.

---

## Key Analytical Perspectives
This project demonstrates several important distinctions in data visualization.

### Total Emissions vs. Per-Capita Emissions
Total emissions measure the overall amount of CO2 associated with a country or region.<br>
Per-capita emissions instead normalize emissions relative to population.<br>
Using per-capita emissions therefore changes the analytical question from:<br>
“Which countries produce the most CO2?”<br>
to:<br>
“Which countries have the highest average CO2 emissions per person?”<br>
This distinction is particularly important when comparing countries with very different population sizes.

### Country-Level vs. Regional Analysis
The map operates primarily at the country level, while the line chart aggregates the data into regions.<br>
This difference in granularity allows the project to move between two levels of analysis:

### Country → Regional
The map reveals geographic variation among individual countries, while the line chart provides a broader view of regional development over time.

### Spatial vs. Temporal Analysis
The two visualizations also demonstrate two fundamental dimensions of analytical visualization:<br>

|Visualization|	Primary Dimension|	Main Question|
|-------------|------------------|---------------|
|Global Bubble Map|	Spatial| Where do per-capita emissions differ?|
|Regional Line Chart|	Temporal|	How did CO2 production change over time?|
<br>
The dashboard therefore combines <b>spatial analysis</b> with <b>time-series analysis</b>.

---

## Project Structure
```
Project-4/
│
├── README.md
├── CO2-Dataset.xlsx
├── Average CO2 Per Capita and CO2 Production by Region.twb
└── screenshot- dashboard.png
```
The Tableau workbook contains the visualization and dashboard construction, while the dataset provides the underlying source data.

---

## Tools & Technologies
### Primary Tool
* Tableau
### Data Source
* Excel (.xlsx)
* CO2-Dataset
### Visualization Techniques
* Geographic mapping
* Bubble map
* Time-series line chart
* Regional comparison
* Aggregation
* Dashboard composition
* Visual encoding
* Data storytelling
 
---
 
## Skills Demonstrated
This project demonstrates practical skills in:
* Tableau data visualization
* Geographic visualization
* Time-series visualization
* Aggregation and summarization
* Country-level analysis
* Regional analysis
* Comparative visualization
* Dashboard design
* Visual hierarchy
* Chart selection
* Data storytelling
* Communicating quantitative information visually

More broadly, the project demonstrates the ability to take a structured dataset and translate it into multiple visual representations based on different analytical questions.

---
 
## Project Relationship to Previous CO2 Visualization Work
Although this project uses the same <b>CO2-Dataset</b> as an earlier project in the portfolio, it has a distinct visualization objective.<br>
The earlier project focuses on a different view of global CO2 emissions, while <b>Project 4 specifically combines average per-capita emissions with regional historical production trends.</b><br>
The reuse of the dataset is intentional: it demonstrates that a single dataset can support multiple visualization approaches when the analytical questions and visual encodings are changed.<br>
This project therefore emphasizes <b>visualization design and analytical framing</b>, rather than simply producing another version of the same dashboard.

---
 
## What This Project Demonstrates
The main value of this project is not simply the creation of two Tableau charts, but the process of selecting an appropriate visual representation for different analytical questions.<br>
The project demonstrates how:
* geographic questions can be communicated through maps,
* temporal questions can be communicated through line charts,
* aggregation can change the level at which a dataset is interpreted,
* per-capita measures can provide a different perspective from total quantities, and
* multiple complementary visualizations can be combined into a coherent dashboard.
<br>
The final dashboard provides two interconnected perspectives on CO2 emissions:<br>
<b>Where are emissions per person relatively high or low?</b><br>
and<br>
<b>How have regional CO2 production levels evolved over time?</b><br>
Together, these perspectives create a concise visual exploration of global and regional CO2 emission patterns.
 
---
 
## Final Dashboard
The completed Tableau dashboard integrates both visualizations into a single presentation:<br>
<b>Average CO2 Per Capita — Global Geographic Perspective</b><br>
↓<br>
<b>CO2 Production by Region, 1960–2011 — Historical Regional Perspective</b><br>
This structure allows the viewer to move from a broad spatial comparison to a longitudinal regional analysis within the same dashboard.<br>

 <img width="1298" height="1314" alt="Average_CO2_Per_Capita_and_CO2_Production_by_Region" src="https://github.com/user-attachments/assets/1869e510-17ea-43b2-9633-5322bff16588" />

---
 
## Conclusion
Project 4 demonstrates the use of Tableau to transform a longitudinal CO2 dataset into a structured visual story.<br>
By combining a <b>global bubble map of average CO2 emissions per capita with a regional line chart of CO2 production from 1960 to 2011</b>, the project highlights how different visual encodings can reveal different characteristics of the same underlying data.<br>
The project emphasizes three core principles of effective data visualization:
1. <b>Choose visualization types according to the analytical question.</b>
2. <b>Use appropriate levels of aggregation to support meaningful comparisons.</b>
3. <b>Combine complementary visualizations into a coherent dashboard rather than treating charts as isolated outputs.</b>
<br><br>
Overall, this project demonstrates my ability to use Tableau not only to create individual visualizations, but also to design a dashboard that organizes geographic, temporal, and quantitative information into an accessible analytical narrative.


 





 
