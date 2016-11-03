## Source: http://www.r-tutor.com/elementary-statistics/numerical-measures
old = options(digits=10)

## Mean, median, quartile, percentile, and range ###
head(faithful)
duration = faithful$eruptions
mean(duration)					# Mean
median(duration)					# Median
quantile(duration)				# Quantile
quantile(duration, c(.32, .57, .98))	# Value greater than n-percent of data
range(duration) 					# Range

## Box plot ###
# points of interest in order: min, 1st quantile, median, 3rd quantile, max
boxplot(duration, horizontal=TRUE)  # horizontal box plot

## Variance, standard deviation, covariance, and correlation coefficient
var(duration)			# Variance
sd(duration)			# Standard deviation
waiting = faithful$waiting
cov(duration, waiting)		# Covariance
cor(duration, waiting)		# Correlation coefficient

## Central moment, skewness, and kurtosis ###
library(e1071)                    		# load e1071 
k = 3
moment(duration, order=k, center=TRUE) 	# k-th central moment
skewness(duration)                		# Skewness
kurtosis(duration)				# Kurtosis