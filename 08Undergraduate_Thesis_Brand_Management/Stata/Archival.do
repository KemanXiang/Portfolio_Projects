********************************************************************************
* ARCHIVAL DO SCRIPTS
*
* Undergraduate Thesis (2022)
* The Impact of Brand Management on Consumer Perception:
* Evidence from the International Apparel Industry
*
* ARCHIVAL STATUS
* ---------------
* This file is an archived script of the project.
*
* Required files (same working directory):
*   3.1_English.dta
*   3.2_English.dta
*   3.3.1_English.dta
*   3.3.2_English.dta
*   3.3.3_English.dta
*   3.4_English.dta
*
* Software target: Stata 15 or later
********************************************************************************

version 15.0
clear all
set more off
capture log close _all
log using "Archival.log", replace text

display "======================================================================"
display " BRAND MANAGEMENT AND CONSUMER PERCEPTION"
display "======================================================================"
display "This log builds six OLS models from the thesis datasets."
display "All source datasets are loaded read-only; this script does not save over them."

********************************************************************************
********************************************************************************
*
* Statistical specification:
*   All six models are ordinary least-squares regressions with an intercept.
*
* Significance language:
*   p < .05 is described as statistically significant at the 5% level.
*   Coefficients are interpreted as conditional associations in the multiple
*   regressions. This archival script does not reinterpret OLS associations as
*   causal effects.
*
* Sample:
*   Each reported regression uses 31 complete observations.
*   Some translated DTA files physically contain 172 rows because the surviving
*   source files retained blank/incomplete rows. Stata's regress command uses
*   complete cases for the variables in each specification.
*
* Translation:
*   Variable names and labels were translated from Chinese to English in 2026.
*   Numerical analytical content was preserved.
*
********************************************************************************


********************************************************************************
* SECTION 3.1
* BRAND MANAGEMENT -> TOTAL CONSUMER PERCEPTION
********************************************************************************
*
* Research purpose
* ----------------
* Evaluate the overall linear relationship between the aggregate Brand
* Management measure and Total Consumer Perception.
*
* Model:
*   Total Consumer Perception_i =
*       beta_0 + beta_1 Brand Management_i + error_i
*
* Thesis interpretation:
*   The original thesis reported a positive relationship between overall brand
*   management and consumer perception.
*
use "3.1_English.dta", clear

display "---------------- DATA AUDIT: MODEL 3.1 ----------------"
describe
summarize brand_management total_consumer_perception
misstable summarize brand_management total_consumer_perception

display "---------------- OLS ESTIMATION: MODEL 3.1 -------------"
regress total_consumer_perception brand_management
estimates store M31

* Stata output (2026):
*   N                 = 31
*   F(1,29)           = 22.84
*   Prob > F          = 0.0000
*   R-squared         = 0.4405
*   Adjusted R-squared= 0.4213
*
*   brand_management:
*       b = 2.230755; SE = 0.466811; t = 4.78; p < .001
*       95% CI = [1.276020, 3.185490]
*
* Interpretation
* --------------
* The estimated coefficient is positive and statistically significant.
* Within this analytical sample, a one-unit increase in the aggregate Brand
* Management measure is associated with an estimated 2.231-unit increase in
* Total Consumer Perception. The model explains approximately 44.1% of the
* observed variation in Total Consumer Perception.
*


********************************************************************************
* SECTION 3.2
* BRAND MANAGEMENT DIMENSIONS -> TOTAL CONSUMER PERCEPTION
********************************************************************************
*
* Research purpose
* ----------------
* Decompose Brand Management into four dimensions and examine their conditional
* relationships with Total Consumer Perception.
*
* Predictors:
*   1. Brand Positioning
*   2. Brand Image
*   3. Brand Extension
*   4. Brand Marketing
*
* Model:
*   Total Consumer Perception_i =
*       beta_0 + beta_1 Positioning_i + beta_2 Image_i
*       + beta_3 Extension_i + beta_4 Marketing_i + error_i
*
use "3.2_English.dta", clear

display "---------------- DATA AUDIT: MODEL 3.2 ----------------"
describe
summarize brand_positioning brand_image brand_extension brand_marketing ///
          total_consumer_perception
misstable summarize brand_positioning brand_image brand_extension ///
                    brand_marketing total_consumer_perception

display "---------------- OLS ESTIMATION: MODEL 3.2 -------------"
regress total_consumer_perception ///
        brand_positioning brand_image brand_extension brand_marketing
estimates store M32

* Stata output (2026):
*   N = 31; F(4,26) = 16.25; Prob > F = 0.0000
*   R-squared = 0.7143; Adjusted R-squared = 0.6704
*
*   Brand Positioning: b =  0.066745; SE = 0.030379; p = .037
*   Brand Image:       b =  0.108428; SE = 0.079378; p = .184
*   Brand Extension:   b = -8.021378; SE = 25.36104; p = .754
*   Brand Marketing:   b =  7.832343; SE = 1.987196; p = .001
*
* Interpretation
* --------------
* Holding the other three dimensions constant, Brand Positioning and Brand
* Marketing show statistically significant positive associations with Total
* Consumer Perception at the 5% level. Brand Image and Brand Extension are not
* statistically significant in this specification. The four-predictor model
* explains approximately 71.4% of the observed variation in the outcome.


********************************************************************************
* SECTION 3.3.1
* BRAND MANAGEMENT DIMENSIONS -> BRAND AWARENESS
* Surviving operational measure: ED EXPANSION DRIVER
********************************************************************************
*
* Research purpose
* ----------------
* Examine which Brand Management dimensions are associated with the thesis's
* Brand Awareness component of Consumer Perception.
*
* Archival measurement note:
*   In the surviving analytical dataset, this outcome is named
*   ed_expansion_driver (ED Expansion Driver). The thesis uses this measure in
*   its Brand Awareness analysis. This script preserves that surviving
*   operationalization rather than relabeling the numerical variable.
*
use "3.3.1_English.dta", clear

display "--------------- DATA AUDIT: MODEL 3.3.1 ---------------"
describe
summarize brand_positioning brand_image brand_extension brand_marketing ///
          ed_expansion_driver
misstable summarize brand_positioning brand_image brand_extension ///
                    brand_marketing ed_expansion_driver

display "--------------- OLS ESTIMATION: MODEL 3.3.1 ------------"
regress ed_expansion_driver ///
        brand_positioning brand_image brand_extension brand_marketing
estimates store M331

* Stata output (2026):
*   N = 31; F(4,26) = 43.34; Prob > F = 0.0000
*   R-squared = 0.8696; Adjusted R-squared = 0.8495
*
*   Brand Positioning: b =  0.0000401; p < .001
*   Brand Image:       b = -0.0000299; p = .232
*   Brand Extension:   b =  0.0078708; p = .368
*   Brand Marketing:   b =  0.0052111; p < .001
*   Constant:          b = -0.1976356; p = .589
*
* Interpretation
* --------------
* Brand Positioning and Brand Marketing have statistically significant positive
* coefficients. Brand Image and Brand Extension are not statistically
* significant at the 5% level. The model R-squared is approximately 0.870.

********************************************************************************
* SECTION 3.3.2
* BRAND MANAGEMENT DIMENSIONS -> BRAND ATTITUDE / LOYALTY
* Surviving operational measure: LD LOYALTY DRIVER
********************************************************************************
*
* Research purpose
* ----------------
* Examine which Brand Management dimensions are associated with the thesis's
* Brand Attitude component, operationalized in the surviving analytical data
* as the LD Loyalty Driver.

use "3.3.2_English.dta", clear

display "--------------- DATA AUDIT: MODEL 3.3.2 ---------------"
describe
summarize brand_positioning brand_image brand_extension brand_marketing ///
          ld_loyalty_driver
misstable summarize brand_positioning brand_image brand_extension ///
                    brand_marketing ld_loyalty_driver

display "--------------- OLS ESTIMATION: MODEL 3.3.2 ------------"
regress ld_loyalty_driver ///
        brand_positioning brand_image brand_extension brand_marketing
estimates store M332

* Stata output (2026):
*   N = 31; F(4,26) = 8.79; Prob > F = 0.0001
*   R-squared = 0.5749; Adjusted R-squared = 0.5095
*
*   Brand Positioning: b =  2.00e-08; p = .921
*   Brand Image:       b =  2.74e-06; p < .001
*   Brand Extension:   b = -0.000076; p = .685
*   Brand Marketing:   b =  9.06e-06; p = .407
*
* Interpretation
* --------------
* Brand Image is the only Brand Management dimension with a statistically
* significant coefficient at the 5% level in this model, and its estimated
* association is positive. The remaining three dimensions are not statistically
* significant. The model explains approximately 57.5% of observed variation
* in the LD Loyalty Driver.

********************************************************************************
* SECTION 3.3.3
* BRAND MANAGEMENT DIMENSIONS -> PURCHASE INTENTION
* Surviving operational measure: PD PRICE DRIVER
********************************************************************************
*
* Research purpose
* ----------------
* Examine which Brand Management dimensions are associated with the thesis's
* Purchase Intention component of Consumer Perception.
*
* Archival measurement note:
*   The surviving outcome variable is pd_price_driver (PD Price Driver).
*
use "3.3.3_English.dta", clear

display "--------------- DATA AUDIT: MODEL 3.3.3 ---------------"
describe
summarize brand_positioning brand_image brand_extension brand_marketing ///
          pd_price_driver
misstable summarize brand_positioning brand_image brand_extension ///
                    brand_marketing pd_price_driver

display "--------------- OLS ESTIMATION: MODEL 3.3.3 ------------"
regress pd_price_driver ///
        brand_positioning brand_image brand_extension brand_marketing
estimates store M333

* Stata output (2026):
*   N = 31; F(4,26) = 15.93; Prob > F = 0.0000
*   R-squared = 0.7102; Adjusted R-squared = 0.6656
*
*   Brand Positioning: b =  0.0027470; p < .001
*   Brand Image:       b =  0.0103197; p < .001
*   Brand Extension:   b = -0.2251725; p = .727
*   Brand Marketing:   b = -0.1008780; p = .011
*
* Interpretation of the surviving analytical data
* ------------------------------------------------
* Brand Positioning and Brand Image have statistically significant positive
* coefficients. Brand Marketing is also statistically significant, but its
* coefficient in the surviving data is NEGATIVE. Brand Extension is not
* statistically significant. The model explains approximately 71.0% of the
* observed variation in PD Price Driver.
*
* REPLICATION NOTE 3.3.3
* ----------------------
* The thesis prints Brand Marketing as +0.100878 and interprets it positively.
* The achived DTA and Stata rerun produce -0.100878, with the same
* absolute coefficient magnitude and corresponding SE/p-value pattern.
* This is consistent with an omitted minus sign when the result was transferred
* to the thesis. For archival integrity, this script reports the Stata rerun
* without silently changing the historical thesis.


********************************************************************************
* SECTION 3.4
* BRAND MANAGEMENT DIMENSIONS -> BRAND VALUE
********************************************************************************
*
* Research purpose
* ----------------
* Extended analysis of how the four Brand Management dimensions relate to
* Brand Value.
*
use "3.4_English.dta", clear

display "---------------- DATA AUDIT: MODEL 3.4 ----------------"
describe
summarize brand_positioning brand_image brand_extension brand_marketing ///
          brand_value
misstable summarize brand_positioning brand_image brand_extension ///
                    brand_marketing brand_value

display "---------------- OLS ESTIMATION: MODEL 3.4 -------------"
regress brand_value ///
        brand_positioning brand_image brand_extension brand_marketing
estimates store M34

*  Stata output (2026):
*   N = 31; F(4,26) = 71.30; Prob > F = 0.0000
*   R-squared = 0.9164; Adjusted R-squared = 0.9036
*
*   Brand Positioning: b =  0.0096399; p = .028
*   Brand Image:       b =  0.0122322; p = .308
*   Brand Extension:   b = -1.387961;  p = .739
*   Brand Marketing:   b =  3.488845;  p < .001
*
* Interpretation
* --------------
* Brand Positioning and Brand Marketing have statistically significant positive
* coefficients at the 5% level. Brand Image and Brand Extension are not
* statistically significant. This specification has the highest R-squared of
* the six reproduced models (approximately 0.916).

********************************************************************************
* CROSS-MODEL SYNTHESIS
********************************************************************************
*
*  Pattern across the six specifications:
*
*   3.1 Overall Brand Management:
*       positive, statistically significant association with Total Consumer
*       Perception.
*
*   3.2 Total Consumer Perception:
*       significant positive coefficients for Brand Positioning and
*       Brand Marketing.
*
*   3.3.1 Brand Awareness / ED:
*       significant positive coefficients for Brand Positioning and
*       Brand Marketing.
*
*   3.3.2 Brand Attitude / LD:
*       significant positive coefficient for Brand Image.
*
*   3.3.3 Purchase Intention / PD:
*       significant positive coefficients for Brand Positioning and Brand Image;
*       significant NEGATIVE coefficient for Brand Marketing in the surviving
*       analytical data; Brand Extension is not significant.
*
*   3.4 Brand Value:
*       significant positive coefficients for Brand Positioning and
*       Brand Marketing.
*
* Caution
* -------
* These are OLS associations from the thesis's analytical design and
* dataset. Statistical significance does not by itself establish causal effects.
* This archive preserves the historical specification rather
* than redesigning the undergraduate study.
*
********************************************************************************
* REPRODUCIBILITY AND PROVENANCE NOTES
********************************************************************************
*
* 1. The six English .dta files are translations of surviving Chinese-language
*    Stata datasets. Variable names/labels were translated; analytical values
*    were preserved.
*
* 2. The scripts were executed in Stata and successfully reproduced all
*    six models with N = 31 complete observations per regression.
*
* 3. No source dataset is overwritten by this script.
*
********************************************************************************
* END
********************************************************************************

display "======================================================================"
display " ALL SIX MODELS COMPLETED"
display " Output saved to Archival.log"
display "======================================================================"

log close
