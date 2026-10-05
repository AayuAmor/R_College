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
