#####################################################################################
#
# Introduction to R for Text Mining and Analysis
# 
#####################################################################################

##############################################
# 1. Some basic yet important signs and functions
##############################################

# The "#" sign is a specific character in R assigned for markers of comments

# Getting local help
help(round)
?round

# Setting up working directory/folder
setwd()

# getting information about the working directory/folder
getwd()

# Installing packages
install.packages("car")

# Loading up a package
library(car)


##############################################
# 2. Demo of R as an over-powered calculator
##############################################

## R is an over-powered calculator - you can use it to calculate numbers
# Example: Type the following into the console or run them from the script.

1 + 1

sqrt(9)             ## sqrt() is a function.

sqrt(1+5+6-3)       ## We can pass values to functions and get results.


# EXERCISE: # What is the value of (1+3)*(1+4+6) ? Write the "equation" here and run it.


## ASSIGNMENT-OPERATORS

# The equals sign can be used to assign value to a variable.

a = 1
a 

# But the preferred assignment operator is "<-".
# RStudio Shortcut: [Alt] [-] will insert the R assignment operator.

a <- 1
a

## EXERCISE - Create an object "sank" and give it a value of "1912".


##############################################
# 3. Data Types in R
##############################################

## ATOMIC DATA TYPE

# Atomic data contains only a single value or object

# Numeric
pi <- 3.14159

#We can confirm this using typeof() function
typeof(pi)         

# Integers - Integers are funny. They have to be created consciously.
starboard <- 10

typeof(starboard)

# We can (double) confirm this:
is.integer(starboard)

# we can assign a number to an integer using as.integer()

port <- as.integer(starboard)
port
typeof(port)

# What would happen if a float data is converted integer?  

port <- as.integer(3.14159)
port


# LOGICAL variables are often created in the process of comparing things.
starboard <- 10; port <- 15;

# Question: Is this TRUE or FALSE?
starboard == port


# Character

# You can use " or ' to create a character

# Some character vars:
first_name <- "Captain"
last_name <- "Smith"

# Let's put them together using paste funtion
paste(first_name, last_name, sep=" ")


## VECTORS

#   - Vectors are 1-dimensional *(length)*.
#   - Vectors can contain only one data type *(integer, character, date)*.
#   - Vectors containing multiple data types are characters.

# Example:
yard_arm <- c(1,2,3,4,5)      
yard_arm


## VECTORS-LENGTH

# The variable yard_arm has five distinct values in it.
length(yard_arm)



# Vector Indexing using "[]"

## Returns the THIRD value stored in yard_arm.
yard_arm[3] 


## Returns ALL values in yard_arm with a value greater than 2.
yard_arm[ yard_arm>2 ]        ## Easy way to filter data.


## Arithmatic Operations on Vector

starboard <- c(25,30,40,45,50)
port <- c(90,70,50,30,10)

starboard + port


starboard <- c(25,30,40,45,50)
port <- 3

starboard * port


## We can do math on vectors.
starboard <- c(25,30,40,45,50)

mean(starboard)


# We can do math on vectors.
sd(starboard)



###################################
# Dataframe
###################################

## - Historically - called a data.frame.
## - Vectors are 1-dimensional *(length)*.
## - Vectors can contain only one data type *(integer, character, date)*.
##     - Vectors containing multiple data types are characters.
## - Data frames are multi-dimensional.
##     - Today, 2-dimensional data frames only.
##     - There is *no* limit to the dimensionality of your data.
## - Data frames can contain multiple data types.
##     - This is enormously useful for analytical projects.



## Loading Datasets

# Loads the iris data set. It provides the measurements (cm)
# of the sepal length and width, and petal length and width,
# respectively, for 50 flowers from 3 species of iris.
data(iris)


## How many rows and how many columns (dimensions) are in iris?
dim(iris)


## What are the name of the columns (variable names) ?
names(iris)

# It is EASY to access a single column of data for use in analysis by using "$"
iris$Sepal.Length

## The Sepal.Length column is numeric. We can find it's average.
mean( iris$Sepal.Length )


#change the variable names to lower case
names(iris) <- tolower( names(iris) )

names(iris)


#Importing data from external sources (CSV files)
ti_train <- read.csv("data/train.csv", as.is=TRUE)

#Export data to a csv file
write.csv(iris, file = "data/iris.csv", row.names = FALSE)





