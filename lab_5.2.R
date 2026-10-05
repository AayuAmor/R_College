# Install the flights data package (run only once)
install.packages("nycflights13")
# Load the tidyverse packages (tibble, dplyr, ggplot2 and more)
library(tidyverse)
# Load the flights dataset
library(nycflights13)
# Show the number of rows and columns
dim(flights)
# Print the tibble of all 336776 flights
flights


data(package = "nycflights13")
view(flights)

colnames(flights)
flights[1]
flights$year
flights[,1]

select(flights, year)
select(flights, year, month, day)
select(flights, c(1:3))
select(flights, year:day)
select(flights, -year)
flights
flights_1 = select(flights, -(year:day))
flights_1


# helper functions
# Keep columns whose names start with "sched"
select(flights, starts_with("sched"))
# Keep columns whose names end with "delay"
select(flights, ends_with("delay"))
# Keep columns whose names contain "arr"
select(flights, contains("arr"))
# Keep columns with two or more underscores (regular expression)
select(flights, matches(".*_.*_.*")) # . denotes all digits and * denotes all character
# Keep only the last column
select(flights, last_col())