# # Import Data Into R locally

# getwd() # get working directory
# setwd("/home/aayuamor/Desktop/R")# set working directory

# # open data countryNepal

# data = read.csv("assets/tmpqg34iiec.csv")

# View(data)

# summary(data)

# summary(select(data, ENGLISH.NAME))

library(tidyverse)
# data = read_csv("assets/tmpqg34iiec.csv")

url = "https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/unisex-names/unisex_names_table.csv"

namesdata = read_csv(url)
namesdata

view(namesdata)


