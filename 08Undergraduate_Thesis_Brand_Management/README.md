# Brand Management and Consumer Perception

### Undergraduate Thesis \| Empirical Business Research \| Stata & Excel

This repository presents the English-language portfolio edition and
reproducibility archive of my 2022 undergraduate thesis, ***The Impact
of Brand Management on Consumer Perception: Evidence from the
International Apparel Industry***. The project represents an early stage
of my development in empirical business research and is preserved here
alongside a reproducible version of its quantitative
analysis.

## Research Overview

The study investigates **how brand management is associated with consumer
perception in the international apparel industry**. Brand management is
operationalized through four dimensions: **Brand Positioning, Brand
Image, Brand Extension, and Brand Marketing**. The empirical analysis
examines their relationships with overall consumer perception and
component measures used in the thesis, and includes an 
analysis of **Brand Value**.

The project combines literature-based construct development,
secondary-data collection, quantitative measurement, data preparation,
hypothesis testing, and regression analysis.

## Analytical Workflow

The empirical workflow used **Microsoft Excel** for data
organization, coding, and construct calculations and **Stata** for
statistical analysis.

The analysis contains six OLS regression specifications:

  -----------------------------------------------------------------------
  Section                             Analytical Relationship
  ----------------------------------- -----------------------------------
  **3.1**                             Overall Brand Management → Total
                                      Consumer Perception

  **3.2**                             Brand Management Dimensions → Total
                                      Consumer Perception

  **3.3.1**                           Brand Management Dimensions → Brand
                                      Awareness / ED Expansion Driver

  **3.3.2**                           Brand Management Dimensions → Brand
                                      Attitude / LD Loyalty Driver

  **3.3.3**                           Brand Management Dimensions →
                                      Purchase Intention / PD Price
                                      Driver

  **3.4**                             Brand Management Dimensions → Brand
                                      Value
  -----------------------------------------------------------------------

Each regression uses **31 complete observations**.

## Reproducibility Archive

The archive translated original Chinese version into English. It includes the Stata analytical datasets, a documented master
Stata `.do` file, Stata execution logs, a dynamic Markdown/Stata report
combining narrative and executable analysis, and a styled HTML version
designed as a notebook-like presentation.

The workflow successfully produces all six regression
models from the analytical data.

## Selected Findings

The analyses show different patterns across the Brand
Management dimensions. Overall Brand Management is positively associated
with Total Consumer Perception in the aggregate model. In the
multidimensional specifications, **Brand Positioning** and **Brand
Marketing** appear repeatedly among statistically significant
predictors, while **Brand Image** is significant in selected
consumer-perception component models.

These findings describe statistical associations within the 
undergraduate research design. They are not presented as evidence of
causal effects.

## Portfolio Perspective

I include this project as an **archival research artifact**, not as a
study retrospectively redesigned to represent my current methodological
training.

From my current perspective as a PhD applicant, I recognize
opportunities to strengthen the original study in areas including sample
design, construct measurement, model specification, robustness
assessment, reproducible analytical workflows, and the distinction
between statistical association and causal inference.

Revisiting the project therefore serves this purposes: it preserves
evidence of my early experience conducting quantitative business
research.

## Academic Supervision

The original undergraduate thesis was completed under the supervision of
**Fengjun Zhao (赵奉军)**, Associate Professor at Alibaba Business
School, Hangzhou Normal University. Professor Zhao received a bachelor's degree in Economics from **Wuhan University**, a master's degree in Economics from **Fudan University**, and a Ph.D. in Economics from **Nanjing University**. He's academic background
and research are primarily in economics, including urban and real-estate
economics, housing policy, and Chinese economic development.

## Repository Guide

``` text
Brand_Management_Consumer_Perception/
│
├── README.md
├── thesis/
│   └── Brand_Management_Consumer_Perception_Undergraduate_Thesis_Portfolio.pdf
├── excel/
│       ├── 1.2_Scale.xlsx
│       ├── 1.3_Hirose_Consumer_Perception_Calculation.xlsx
│       ├── 1.4_Interbrand_Brand_Value_Calculation.xlsx
│       ├── 2.1_Independent_Variable_Coding_Rules.xlsx
│       ├── 3.1_Total_Brand_Value_Total_Consumer_Perception.xlsx
│       ├── 3.2_Brand_Management_Dimensions_Total_Consumer_Perception.xlsx
│       ├── 3.3.1_Brand_Management_Dimensions_Brand_Awareness.xlsx
│       ├── 3.3.2_Brand_Management_Dimensions_Loyalty.xlsx
│       ├── 3.3.3_Brand_Management_Dimensions_Purchase_Intention.xlsx
│       ├── 3.4_Brand_Management_Dimensions_Total_Brand_Value.xlsx
├── stata/
│   ├── Master_Replication_Archival.do
│   └── Master_Replication_Archival.log
│   ├── 3.1_English.dta
│   ├── 3.2_English.dta
│   ├── 3.3.1_English.dta
│   ├── 3.3.2_English.dta
│   ├── 3.3.3_English.dta
│   └── 3.4_English.dta
│   └── Brand_Management_Replication_Styled.html
│   ├── Brand_Management_Replication.md
├── figures/
    

```

Actual filenames and folders may differ depending on the final
repository organization.

## Skills Demonstrated

-   **Empirical research:** research-question development, literature
    synthesis, construct operationalization, hypothesis testing,
    interpretation, and methodological reflection.
-   **Data analytics:** Excel-based data preparation and measurement,
    Stata data management, OLS regression, statistical interpretation,
    and regression replication.


## Project Status

**Original research:** 2022 undergraduate thesis\
**English portfolio edition and reproducibility reconstruction:** 2026

The translated thesis preserves the substance of the original research,
while the replication materials were created later to make the empirical
workflow inspectable and reproducible for an academic portfolio.
