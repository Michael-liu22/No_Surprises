* Declare survey design 
. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

* Summarize outcomes 

svy: mean moop, over(policy_change_state post_NSA)
svy: mean hipval, over(policy_change_state post_NSA)
svy: mean high_medical_spending, over(policy_change_state post_NSA)

* Adjusted regression models
gen interaction = post_NSA * policy_change_state
svy: glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log) 
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

svy: glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log) 

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

svy: regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.sex

* Re-level models 

svy: glm moop post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log)  

lincom 1.post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)

scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: glm hipval post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty i.sex, family(gamma) link(log)  

lincom 1.post_NSA
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)

scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy: regress high_medical_spending post_NSA##ib1.policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.sex

* Covariate summary 

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

* Parallel trends testing 

keep if year <= 2021

. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

svy: regress moop policy_change_state##c.year 
svy: regress hipval policy_change_state##c.year 
svy: regress high_medical_spending policy_change_state##c.year 

* Exploratory subgroup analyses 

. svyset [iw=asecwt], sdrweight(repwtp1-repwtp160) vce(sdr) mse

* By sex 

svy, subpop(if sex == 1): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if sex == 1): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if sex == 1): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race 

svy, subpop(if sex == 2): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log)

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if sex == 2): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race i.poverty, family(gamma) link(log)

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if sex == 2): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.factor_race 

* By race/ethnicity 

svy, subpop(if factor_race == 1): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log)

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 1): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log)

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 1): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex

svy, subpop(if factor_race == 2): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 2): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 2): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex 

svy, subpop(if factor_race == 3): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 3): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 3): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex 

svy, subpop(if factor_race == 5): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log)

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 5): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_race == 5): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_education i.factor_employment i.sex 

* By education level

svy, subpop(if factor_education == 1): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_education == 1): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_education == 1): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex 

svy, subpop(if factor_education == 2): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_education == 2): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_education == 2): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_employment i.sex 

* By employment status

svy, subpop(if factor_employment == 1): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 1): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 1): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex

svy, subpop(if factor_employment == 2): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 2): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 2): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex 

svy, subpop(if factor_employment == 3): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 3): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.poverty, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if factor_employment == 3): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex

* By poverty status

svy, subpop(if poverty == 1): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if poverty == 1): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if poverty == 1): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment

svy, subpop(if poverty == 0): glm moop interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if poverty == 0): glm hipval interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment, family(gamma) link(log) 

lincom interaction
scalar coef = r(estimate)
scalar lb   = r(lb)
scalar ub   = r(ub)
scalar pct_change     = (exp(coef) - 1) * 100
scalar pct_change_lb  = (exp(lb) - 1) * 100
scalar pct_change_ub  = (exp(ub) - 1) * 100

di as result round(pct_change, 0.1) "%"" (95% CI: " round(pct_change_lb, 0.1) "% to " round(pct_change_ub, 0.1) "%)"

svy, subpop(if poverty == 0): regress high_medical_spending interaction post_NSA policy_change_state i.year i.statefip i.factor_age i.factor_race i.factor_education i.sex i.factor_employment
