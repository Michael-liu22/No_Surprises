*-------------------------------*
* Declare Complex Survey Design
*-------------------------------*

. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

*-------------------------*
* Descriptive Statistics: 
*-------------------------*

* Estimate unadjusted and weighted means + 95% CI of outcomes by intervention status and change 

svy: mean moop, over(policy_change_state post_NSA)
svy: mean hipval, over(policy_change_state post_NSA)
svy: mean high_medical_spending, over(policy_change_state post_NSA)

* Tabulate covariate count and weighted percentages by intervention status (Table 1)

tabulate policy_change_state
tabulate policy_change_state age_group
tabulate policy_change_state sex
tabulate policy_change_state race_group	
tabulate policy_change_state education_group	
tabulate policy_change_state employment_status	
tabulate policy_change_state poverty	

svy: tab policy_change_state age_group, row 
svy: tab policy_change_state sex, row 
svy: tab policy_change_state race_group, row 
svy: tab policy_change_state education_group, row 
svy: tab policy_change_state employment_status, row 
svy: tab policy_change_state poverty, row  

*-------------------*
* Regression Models
*-------------------*

* Create interaction term for policy*time (DiD estimator)
gen interaction = post_NSA * policy_change_state

* Model 1: Out-of-pocket spending 
svy: glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log) 

* Calculate and display relative percentage change for DiD estimator and post-NSA indicator 
lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

lincom post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Estimate marginal effect of DiD estimator (absolute change)

margins, dydx(interaction) 

* Model 2: Premium spending 

svy: glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log) 

* Calculate and display relative percentage change for DiD estimator and post-NSA indicator 
lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

lincom post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

margins, dydx(interaction) 

* Model 3: High Burden Medical Spending (binary outcome)

svy: regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.sex


*--------------------------*
* Re-level Policy Variable
*--------------------------*

* Model 1: Out-of-pocket spending 
svy: glm moop post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log)  

* Calculate and display relative percentage change for post-NSA indicator 

lincom 1.post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)

scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Model 2: Premium spending 

svy: glm hipval post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log)  

* Calculate and display relative percentage change for post-NSA indicator 

lincom 1.post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)

scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Model 3: High Burden Medical Spending (binary outcome)

svy: regress high_medical_spending post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.sex

*-------------------------------------------*
* Pre-Trend Test: Parallel Trends Assumption
*-------------------------------------------*

* Keep only pre-NSA data 

keep if year <= 2021

* Re-declare complex survey design
. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

* Test for differential pre-trends using year × treatment interaction

svy: regress moop policy_change_state##c.year 
svy: regress hipval policy_change_state##c.year 
svy: regress high_medical_spending policy_change_state##c.year 

*------------------------------*
* Exploratory Subgroup Analysis
*------------------------------*

* Declare complex survey design

. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

* Subgroup: By Sex
* Re-run main regression models with 3-way interaction between DiD estimator and sex indicator 

* Model 1: Out-of-pocket spending 
svy: glm moop post_NSA##policy_change_state##i.sex i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term

lincom 1.post_NSA#1.policy_change_state#2.sex

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Model 2: Premium spending 
svy: glm hipval post_NSA##policy_change_state##i.sex i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term

lincom 1.post_NSA#1.policy_change_state#2.sex

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Model 3: High Burden Medical Spending (binary outcome)

svy: regress high_medical_spending post_NSA##policy_change_state##i.sex i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race 

* Subgroup: By Race/Ethnicity (repeated from above)

svy: glm moop post_NSA##policy_change_state##i.factor_race i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log)


* Calculate and display relative percentage change for 3-way interaction term (Black vs Asian)

lincom 1.post_NSA#1.policy_change_state#2.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (Hispanic vs Asian)

lincom 1.post_NSA#1.policy_change_state#3.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (Other vs Asian)

lincom 1.post_NSA#1.policy_change_state#4.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (White vs Asian)

lincom 1.post_NSA#1.policy_change_state#5.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: glm hipval post_NSA##policy_change_state##i.factor_race i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term (Black vs Asian)

lincom 1.post_NSA#1.policy_change_state#2.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (Hispanic vs Asian)

lincom 1.post_NSA#1.policy_change_state#3.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (Other vs Asian)

lincom 1.post_NSA#1.policy_change_state#4.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (White vs Asian)

lincom 1.post_NSA#1.policy_change_state#5.factor_race

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: regress high_medical_spending post_NSA##policy_change_state##i.factor_race i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex 

* Subgroup: By Education Level (repeated from above)

svy: glm moop post_NSA##policy_change_state##i.factor_education i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term

lincom 1.post_NSA#1.policy_change_state#2.factor_education

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: glm hipval post_NSA##policy_change_state##i.factor_education i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log)

lincom 1.post_NSA#1.policy_change_state#2.factor_education

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: regress high_medical_spending post_NSA##policy_change_state##i.factor_education i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex 

* Subgroup: By Employment Status (repeated from above)

svy: glm moop post_NSA##policy_change_state##i.factor_employment i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term (employed vs not in labor force)

lincom 1.post_NSA#1.policy_change_state#2.factor_employment

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"


* Calculate and display relative percentage change for 3-way interaction term (employed vs unemployed)

lincom 1.post_NSA#1.policy_change_state#3.factor_employment

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: glm hipval post_NSA##policy_change_state##i.factor_employment i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log)


* Calculate and display relative percentage change for 3-way interaction term (employed vs not in labor force)

lincom 1.post_NSA#1.policy_change_state#2.factor_employment

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

* Calculate and display relative percentage change for 3-way interaction term (employed vs unemployed)

lincom 1.post_NSA#1.policy_change_state#3.factor_employment

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: regress high_medical_spending post_NSA##policy_change_state##i.factor_employment i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex 

* Subgroup: By Poverty Status (repeated from above)

svy: glm moop post_NSA##policy_change_state##i.poverty i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term

lincom 1.post_NSA#1.policy_change_state#1.poverty

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: glm hipval post_NSA##policy_change_state##i.poverty i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log)

* Calculate and display relative percentage change for 3-way interaction term

lincom 1.post_NSA#1.policy_change_state#1.poverty

scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: regress high_medical_spending post_NSA##policy_change_state##i.poverty i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex 
