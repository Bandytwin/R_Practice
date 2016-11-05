## Source: http://www.r-tutor.com/elementary-statistics/goodness-fit

## Multinomial goodness of fit ###
#	The null hypothesis for goodness of fit test for multinomial distribution
#	is that the observed frequency f_i is equal to an expected count e_i in
#	each category. It is to be rejected if the p-value of the Chi-
#	squared test statistics is less than a given significance level a.
library(MASS)
levels(survey$Smoke)
smoke.freq = table(survey$Smoke)
# 	Suppose the true smoking statistics are: 4.5% Heavy, 79.5% Never, 
#	8.5% Occas, 7.5% Regul. Does survey support with 0.05 significance?
smoke.prob = c(.045, .795, .085, .075)
chisq.test(smoke.freq, p=smoke.prob) # p-value > 0.05 so don't reject

## Chi-Squared Test of Independence ###
#	Determine if smoking frequency is independent of activity level with
#	0.05 significance level
library(MASS)
tbl = table(survey$Smoke, survey$Exer)
chisq.test(tbl) # p-value > 0.05 so don't reject independence assumption
