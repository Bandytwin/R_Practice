## Source: http://www.r-tutor.com/elementary-statistics/quantitative-data

## Use built-in old faithful eruption data frame ###
head(faithful)

## Frequency distribution of eruption duration (use hist instead) ###
duration = faithful$eruptions
range(duration)						# Range of data is [1.6:5.1]
bins = seq(1.5,5.5,by=0.5)				# Set histogram bins
duration.cut = cut(duration, bins, right=FALSE)	# Bin data using bins
duration.freq = table(duration.cut)			# Counts per bin
cbind(duration.freq)

## Use hist() function to make and plot histogram ###
hist(duration,    			# apply the hist function 
   right=FALSE,    			# intervals closed on the left 
   main="Old Faithful Eruptions", 	# the main title 
   xlab="Duration minutes")       	# x-axis label

## Find relative frequency of eruption duration ###
duration.relFreq = duration.freq / nrow(faithful)
old = options(digits=1)						# Display 2 decimals
cbind(duration.freq, duration.relFreq)
options(old)							# Restore old options

## Find cummulative frequency distribuiton and plot ###
duration.cumFreq = c(0, cumsum(duration.freq))	# Add 0 for first "bins" value
cbind(duration.cumFreq)
plot(bins, duration.cumFreq,     		# plot the data 
   main="Old Faithful Cumm. Eruptions",	# main title 
   xlab="Duration minutes",        		# x-axis label 
   ylab="Cumulative eruptions")   		# y-axis label 
lines(bins, duration.cumFreq)           	# join the points

## Stem and leaf plot of eruption duration ###
stem(duration)

## Scatter plot of eruption duration vs waiting time ###
waiting = faithful$waiting
plot(duration, waiting,		# plot the variables 
   xlab="Eruption duration",  # x-axis label 
   ylab="Time waited")        # y-axis label
abline(lm(waiting ~ duration))# linear model of waiting time vs duration