## Info from http://www.r-tutor.com/r-introduction/data-frame
## Loading data into data frames and indexing

## Basic operations with built in data frame set "mtcars" ####
head(mtcars) #Preview dataset

# Index a column vector
mtcars[["am"]] 	#Get column vector
mtcars$am		#Another way to get the column vector
mtcars[,"am"]	#Yet another way...

# Data frame column slice
mtcars["am"] 		#Get column slice (has header info)
mtcars[c("mpg", "hp")]	#Get data frame slice with two columns

# Data frame row slice
mtcars["Camaro Z28",] 				#Get row slice
mtcars[c("Datsun 710", "Camaro Z28"),] 	#Data frame slice with 2 rows
mtcars[c(3, 24),] 				#Also a data frame slice with 2 rows

# Logical indexing
L = mtcars$am == 0	#Member value true if car has automatic transmission
mtcars[L,] 			#Slice with cars that have automatic transmission

## Importing data into data frames ####

# Read from Xcel file
library(gdata)                   # load gdata package 
help(read.xls)                   # documentation 
mydata = read.xls("mydata.xls")  # read from first sheet

library(XLConnect)               		# load XLConnect package 
wk = loadWorkbook("mydata.xls") 		# load entire workbook
df = readWorksheet(wk, sheet="Sheet1")	# load specific sheet

# Read from minitab file
library(foreign)                 # load the foreign package 
help(read.mtp)                   # documentation 
mydata = read.mtp("mydata.mtp")  # read from .mtp file

# Read from SPSS file
library(foreign)                 # load the foreign package 
help(read.spss)                  # documentation 
mydata = read.spss("myfile", to.data.frame=TRUE)

# Read from .txt table file
mydata = read.table("mydata.txt")  # read text file

# Read .csv file
help(read.csv)
mydata = read.csv("mydata.csv")  # read csv file 

## Setting the working directory ####
getwd()			# get current working directory
setwd("<new path>")	# set working directory
setwd("C:/MyDoc")		# example (even on windows platform)
