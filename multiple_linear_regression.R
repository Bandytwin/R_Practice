## Source: http://www.r-tutor.com/elementary-statistics/non-parametric-methods
#	More analysis on website

## Multiple linear regression ###
#	Apply the multiple linear regression model for the data set stackloss, 
#	and predict the stack loss if the air flow is 72, water temperature is 
#	20 and acid concentration is 85.
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., 
	data=stackloss) # Apply lm function to formula that describes stackloss
newdata = data.frame(Air.Flow=72, Water.Temp=20, Acid.Conc.=85) #Wrap dataframe
predict(stackloss.lm, newdata) # Estimate stackloss on newdata

## Multiple coefficient of determination ###
#	The coefficient of determination of a multiple linear regression model
#	is the quotient of the variances of the fitted values and observed values 
#	of the dependent variable.
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., 
	data=stackloss) # Apply lm function to formula that describes stackloss
summary(stackloss.lm)$r.squared

## Confidence interval for MLR ###
attach(stackloss)    # attach the data frame
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc.)
newdata = data.frame(Air.Flow=72, Water.Temp=20, Acid.Conc.=85) #Wrap dataframe
predict(stackloss.lm, newdata, interval="confidence") # Default is 95% CI
detach(stackloss)    # clean up

## Prediciton interval for MLR ###
attach(stackloss)    # attach the data frame
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc.)
newdata = data.frame(Air.Flow=72, Water.Temp=20, Acid.Conc.=85) #Wrap dataframe
predict(stackloss.lm, newdata, interval="predict") # Default is 95% CI
detach(stackloss)    # clean up

