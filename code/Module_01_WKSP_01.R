#------------------------------------#
# MB5370: Introduction to Programming
# Justin Proctor
# May 2026

# Workspace:
# ~/Desktop/JCU R folder/MB5370/Module_01/Module_01.R
#------------------------------------#

#------------------------------------#
# Workshop 01. Introduction ####


# Coding Best Practices #### 
# load packages at the beginning
library(ggplot2)
library(tidyr)

# or alternatively just load this at the beginning which includes the two above
library(tidyverse)


# Getting started ####
# This section introduces us to R by using it as a simple calculator.
2 + 1

1:30

6*
2  


# Variables and Assignment ####
# This section focuses on understanding how data is stored in R and why that matters.
age_yrs <- 26
name <- 'Justin'
age_yrs + 1
age_yrs + age_yrs

Age <- 41 # cases matter
`age bob` <- 25 # no spaces, but with back ticks

# Exercise: running an algorithm
15 + 25.1 + 20.25
value_1 <- 60.35
value_2 <- 39.65
value_1 + value_2


# Functions ####
# establishing the foundations of using functions in R
years_old <- 25.7
round(years_old) # rounds up
floor(years_old) # rounds down

years_old <- 25.765
round (years_old, 2) # comma after the object to specify argument

?round # go to help

# Exercise: paste function
?paste
paste(name, "is", age_yrs, "old")


# Debugging ####
# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets
grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade + 10
print (total) # executed in the way it was defined

# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be?
print (out) # What is the value of out? Is it the same as expected?

# debugging errors
out <- p * a # undefined variable.
## > Error: object 'a' not found
out <- p * z

# Testing
x <- 1
is.character(x)
is.numeric (x)

# Exercise: practicining debugging
my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro",
             "cinco")
print (my_quiz)
str(my_quiz)
length(my_quiz)
# comma missing after "cuatro", quiz misspelling, and "len" is not a function (replaced by "length")


# Data Types ####
#6 types: character, numeric, integer, logical, complex, raw
#functions to help understand: 
#class() - what kind of object is it (high-level)?
#typeof() - what is the object's data type?
#length() - how long is it?
#attributes() - does it have any metadata?

# Exercise: variable types
my_numeric_variable = 4.2
class(my_numeric_variable) #numeric
typeof(my_numeric_variable) #double
length(my_numeric_variable) #1
attributes(my_numeric_variable) #null


# Data Structures ####
y <- c(1, 2, 3)
z <- c("Sarah", "Tracy", "Jon")

# Exercise: interrogate the type of character vector
class(z) #character
class(y) #numeric

x <- list(1, "a", TRUE)
x
x[[2]]


# Data frames and tibbles ####
my_dataframe <- data.frame (no = c(1,2,3), name = c("Tracey", "John", "Pete"), pass = c(TRUE, FALSE, TRUE)) 
my_dataframe
str (my_dataframe)

my_dataframe$no = as.factor(my_dataframe$no)
str (my_dataframe)
                            

# Packages and Libraries ####  
#install.packages ("tidyverse") # comment out so it doesn't run again (already downloaded)
library(tidyverse) # load into current work space
#install.packages (ggplot2) # comment out so it doesn’t run again (already downloaded)                          
#install.packages("ggplot","tidyr", "earthtones","redlistr","dplyr" ,"terra")
library (ggplot2)
?ggplot2


# Coding Best Practices #### 
# load packages at the beginning
library(ggplot2)
library(tidyr)

# or alternatively just load this at the beginning 
library(tidyverse)

# Exercise: steps required to utilize a csv file and create a plot
# 1. Read the .csv dataset into R. etc.
# 2. load relevant packages for plot generation
# 3. filter out results for the specific species in question
# 4. plot results from filtered data





