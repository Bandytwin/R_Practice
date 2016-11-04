## Source: http://www.r-tutor.com/elementary-statistics/hypothesis-testing
# 	More hypothesis testing examples at above website

## Lower tail test of population mean with known variance ###
#	Null hypothesis is u leq u_o (lower bound on true mean) and the test
#		statistic is z = (x_bar - u_o)/(sigma / sqrt(n)). The null
#		hypothesis is rejected if z leq z_a, where z_a is the 
#		100(1-a) percentile of the standard normal.
xbar = 9900				# Sample mean
mu0 = 10000				# Hypothesized value
sigma = 120				# Population standard deviation
n = 30				# Sample size
z = (xbar-mu0)/(sigma/sqrt(n))# Test statistic
alpha = 0.05
z.alpha = qnorm(1 - alpha)
z < -z.alpha			# If TRUE then reject null hypothesis

## Lower tail test of population mean with unknown variance ###
#	Test statistic is t = (x_bar - u_o)/(s / sqrt(n)). The null hypothesis is
#		rejected if t leq t_a where t_a is the 100(1-a) percentile of the
#		Student t distribution with n-1 dof.
xbar = 9900				# Sample mean
mu0 = 10000				# Hypothesized value
s = 120				# Sample standard deviation
n = 30				# Sample size
t = (xbar-mu0)/(s/sqrt(n))	# Test statistic
alpha = 0.05
t.alpha = qt(1-alpha, df=n-1, lower=FALSE)	# Critical value
t < t.alpha				# If TRUE then reject null hypothesis

## Lower tail test of population proportion ###
#	Test statistic is z = (p_bar - p_a)/(sqrt(p_o(1-p_o)/n)). The null
#		hypothesis is rejected if z leq z_a wehre z_a is 100(1-a)
#		percentile of standard normal.
#	Ex. 60% of citizens voed in thhe last election. 85 out of 148 people
#		in survey voted in current election, at 0.05 significance level
#		can we reject the null hypothesis that the propportion of
#		voters in the the population is above 60% this year?
pbar = 85/148				# Sample proportion
p0 = 0.6					# Hypothesized value
n = 148					# Sample size
z = (pbar-p0)/sqrt(p0*(1-p0)/n)	# Test statistic
alpha = 0.05
z.alpha = qnorm(1-alpha)		# Critical value
z < z.alpha					# If TRUE then reject null hypothesis
