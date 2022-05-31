######## Other Useful Functions for Data Wrangling ####

# Discuss with your table what as.factor() does
library(tidyverse)
?mtcars
as.factor(mtcars$am)

#Use this code to create the `money` object
money <- c('4,554,25', '$45', '8025.33cents', '288f45')


#Run the following code and talk with your table about the output.
as.numeric(money)
#Now run the following code and compare it with the previous results
parse_number(money)

# Almost every package we learn in this class has a "cheat sheet"
# A cheat sheet is a 1 or 2 page document that serves as a primer/reminder
# for all the most important basics of a function.
# Check out the cheatsheet for dplyr:
# https://github.com/rstudio/cheatsheets/blob/master/data-transformation.pdf

#For the next examples use the Canadian Census data which
# is found in the carData package.
install.packages("carData")
library(carData)

# Your goal: Measure the % population growth at each census. 
# Then rank which decade had the highest growth. 
# Use the lag() and min_rank() functions:

can_pop <- carData::CanPop %>% 
  mutate(prev_pop = lag(population))

can_pop$prev_pop <- (can_pop$population - can_pop$prev_pop)/can_pop$prev_pop


# HINT: You can learn about these functions using the `?` command
# and from the dplyr cheatsheet.
# Almost every package we learn in this class has a "cheat sheet"
# A cheat sheet is a 1 or 2 page document that serves as a primer/reminder
# for all the most important basics of a function.
# Check out the cheatsheet for dplyr:
# https://github.com/rstudio/cheatsheets/blob/master/data-transformation.pdf

# Take a few minutes to discuss the following functions as a group.
# Ensure you know what they are used for / how to use them.
distinct() and n_distinct()
is.na()
case_when()
top_n (especially with group_by())
%in%
