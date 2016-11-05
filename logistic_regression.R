## Source: http://www.r-tutor.com/elementary-statistics/logistic-regression

## Estimate Logistic Regression Equation ###
#	By use of the logistic regression equation of vehicle transmission in the
#	data set mtcars, estimate the probability of a vehicle being fitted with
#	a manual transmission if it has a 120hp engine and weights 2800 lbs.
am.glm = glm(formula=am ~ hp + wt, data=mtcars, family=binomial)
newdata = data.frame(hp=120, wt=2.8)
predict(am.glm, newdata, type="response") # Prob of manual transmission is 64%

## Significance test for logistic regression ###
summary(am.glm) 	# p-values for hp and wt are less than 0.05 so
			#	both are significant in logistic regression