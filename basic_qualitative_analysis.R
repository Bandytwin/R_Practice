## Source: http://www.r-tutor.com/elementary-statistics/qualitative-data
## Qualitative analysis including frequency distributions and charts

## Load built-in data frame "iris" from MASS package ###
library(MASS)
help(iris)
head(iris)
head(iris$Species)

## Find the frequency distribution of iris species ###
species = iris$Species 		# Get column vector of species
species.freq = table(species)	# Apply table function (counts for each category)
species.freq

## Find the relative frequency distribution of species ###
species.relFreq = species.freq / nrow(iris)
cbind(species.relFreq)	# Display in column form

## Make a colorful bar plot ###
colors = c('red', 'blue', 'green')		# Create color vector for plot
barplot(species.freq, col=colors)	# Make bar plot

## Make pie chart ###
pie(species.relFreq)




