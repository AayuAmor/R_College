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


dim(flights)
dim(distinct(flights)) # to filter out the duplicate value we use the distinct 
# first work in data scinece lab --> check data dim(no. of rows and columns) -> filter out duplicate data(row, columns)

sat = select(flights, year)
typeof(sat)
sat_1 = pull(flights, year)
sat_1
typeof(sat_1)

# pull and $ use vector as functionality whereas the select uses List as functionality

class(sat_1)

sat_2 = flights$year
sat_2
typeof(sat_2)

summary(sat_1)
flights_2 = rename(flights, destination = dest, tail_num = tailnum)
view(flights_2)


# Add gain (minutes made up) and speed (miles per hour), keeping all other columns
flights_3 = mutate(flights, gain=arr_delay-dep_delay, speed=distance/(air_time/60))
dim(flights_3)
# keep only the new variables
# Keep only the new columns, gain and gain per hour
flights_4 = transmute(flights, gain=arr_delay-dep_delay, gain_per_hour=gain/(air_time/60))
dim(flights_4)
# Keep only each distance minus the average distance
transmute(flights, distance_residual=distance-mean(distance))

# For colums We use select and for Rows we Use filter

# Take rows 87 to 96 by position
slice(flights, 87:96)
# Take the top 20 rows by the last column (more if there are ties)
# a =top_n(flights, 20)
a =top_n(flights, 20, dep_time)
# Keep only flights on 1 January
filter(flights, month==1, day==1)
filter(flights, arr_time > 913)

# if we want to have specific column
day = filter(flights, month==1, day==1)
select(day, day, month)

################# Exercise #############
# Departed from midnight to 6am (2400 also means midnight)
filter(flights, dep_time <= 600 | dep_time == 2400)
# Arrival delay of 120 minutes or more
filter(flights, arr_delay >= 120)
# Destination is either Houston airport
filter(flights, dest %in% c("IAH", "HOU"))
# Operated by United, American or Delta
filter(flights, carrier %in% c("UA", "AA", "DL"))
# Over two hours late on arrival but not late leaving
filter(flights, arr_delay > 120, dep_delay <= 0)
# Left an hour or more late but made up over 30 minutes in flight
filter(flights, dep_delay >= 60, dep_delay - arr_delay > 30)


