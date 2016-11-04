## Source: http://www.r-tutor.com/elementary-statistics/probability-distributions

## Binomial Distributions ###
# 12 multiple choice questions, 5 answers per question, guess randomly
dbinom(4, size=12, prob=0.2)	# Prob of exactly 4 correct answers
pbinom(4, size=12, prob=0.2)	# Prob of at most 4 correct answers

## Poisson Distribution ###
# On average 12 cars/min cross a bridge
ppois(16, lambda=12)			# P(17 > cars cross in a min) (upper tail)
ppois(16, lambda=12, lower=FALSE)	# P(16 < cars cross in a min) (lower tail)

## Continuous Uniform Distribution ###
runif(10, min=1, max=3)	# Select 10 numbers between 1 and 3

## Exponential Distribution ###
# Describes arrival time of randomly recurring independent event sequence
#	given expected waiting time between events
pexp(2, rate=1/3) # If mean checkout time is 3 min, prob checkout < 2 min

## Normal Distribution ###
pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)	# Percent above 72

## Chi-squared Distribution ###
# Given m independent r.v. w/ standard normal distribution: V = x_1 +...+ x_m
#	also called Chi-Squared distribution with m degrees of freedom
qchisq(0.95, df=7) # 95th percentile of Chi-Squared with 7 dof

## Student t Distribution ###
qt(c(0.025, 0.975), df=5)	# 2.5th and 97.5th percentiles with 5 dof

## F Distribution ###
qf(0.95, df1=5, df2=2)	# 95th percentile with (5,2) dof