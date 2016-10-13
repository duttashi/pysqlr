
# - -----------------------------------------------------------------------

# This script is on functions in R
# useful resources are;
## http://r4ds.had.co.nz/functions.html
## http://www.studytrails.com/R/Core/R_Functions/

# In R, an explicit return statement is not required.
# The last variable evaluated is returned
# The function can return an object or a list.
# The variables passed to the R function are normally passed by value. i.e. a copy of the object is passed, so if you change the object inside the function, the change is not reflected outside the function.
# The function names should be verbs and arguments should be nouns
# nouns are ok if the function computes a very well known noun (i.e. mean() is better than compute_mean())
# If your function name is composed of multiple words, I recommend using “snake_case”, where each lowercase word is separated by an underscore. camelCase is a popular alternative 
# If you have a family of functions that do similar things, make sure they have consistent names and arguments. Use a common prefix to indicate that they are connected.
# Another important use of comments is to break up your file into easily readable chunks. Use long lines of - and = to make it easy to spot the breaks.
# RStudio provides a keyboard shortcut to create these headers (Ctrl + Shift + R)
# To get help on if you need to surround it in backticks: ?`if`
# - -----------------------------------------------------------------------

?`if`

funct01<- function(arg1, arg2){
  arg1/arg2
  arg1*arg2
}
funct01(10,2) # returns the las variable evaluated

funct02<- function(arg1, arg2=90){
  # This function has a default value in one of the parameter 
  arg1/arg2
  arg1*arg2
}
funct01(10) # Picks up the default value and returns the las variable evaluated

funct03<- function(a,b){
  # This function will return a data frame
  data.frame(a=c(1,2,3), b=c(4,5,6))
}
funct03()

funct04<- function(a,b){
  # This function will return a list of the data frame
  list(data.frame(a=c(1,2,3), b=c(4,5,6)))
}
funct04()

# Exercises taken from DataCamp https://campus.datacamp.com/courses/writing-functions-in-r/a-quick-refresher?ex=3
# write a function ratio() that takes arguments x and y and returns their ratio, x / y.
# Check your function by calling it with the arguments 3 and 4.
myratio<- function(x,y){
  x/y
}
myratio(3,4)

mymean<-function(x, TRIM=0.1,na.rm=TRUE){
  mean(x)
}
mymean(4:10)
