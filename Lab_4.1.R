# There are two way to create a data frame,
#tibble() and tribble()
# tibble = we must create a vector for each variable and call which will be combined into list and later converted into tibble()
# function at the end
# tribble() = we create a nested list or vector as variable inside tirbble function

# to use tibblle  and tribble function we must utilise the packeage tidyverse()

# tobble and tribble are both used to create a dataframe(dataset)

# lets create a student dataframe

library(tidyverse)
first_name <- c("Ram", "Sita", "Hanuman") #c is combining Function
last_name <- c("Bro", "Sis", "Ji")
Age <- c(1:3)
Gender <- c("M", "F", NA)

student_data <- tibble(first_name, last_name, Age, Gender)
typeof(student_data)
class(student_data)

names(student_data)
colnames(student_data)

list_1 <- list(
  name = "Ram",
  Age = 23
)
names(list_1)
colnames(list_1)

# Vector --> tibble(--> combines into list) --> List --> df changes it to DataFrame

# Top 10 Male and Female Tennis players, as at 20 January 2020
# Data from: https://www.atptour.com/en/rankings/singles
#            https://www.wtatennis.com/rankings/singles
# Load the tidyverse packages (tibble, dplyr, ggplot2 and more)
library(tidyverse)
# Player names as a character vector, men first and then women
name <- c(
  "Nadal",
  "Djokovic",
  "Federer",
  "Medvedev",
  "Theim",
  "Tsitsipas",
  "Zverev",
  "Berrettini",
  "Bautista Agut",
  "Monfils",
  "Barty",
  "Pliskova",
  "Halep",
  "Osaka",
  "Svitolina",
  "Andreescu",
  "Bencic",
  "Kvitova",
  "Williams",
  "Bertens"
)
# Ranks 1 to 10 for the men, then 1 to 10 again for the women
rank <- c(1:10, 1:10)
# Ages of the players in years
age <- c(
  33,
  32,
  38,
  23,
  26,
  21,
  22,
  23,
  31,
  33,
  23,
  27,
  28,
  22,
  25,
  19,
  22,
  29,
  38,
  28
)
# Heights of the players in metres
height <- c(
  1.85,
  1.88,
  1.85,
  1.98,
  1.85,
  1.93,
  1.98,
  1.96,
  1.83,
  1.93,
  1.66,
  1.86,
  1.68,
  1.80,
  1.74,
  1.70,
  1.75,
  1.82,
  1.75,
  1.82
)
# Weights of the players in kilograms
weight <- c(
  85,
  77,
  85,
  83,
  79,
  89,
  90,
  95,
  75,
  85,
  62,
  72,
  60,
  69,
  60,
  60,
  63,
  68,
  72,
  74
)
# Repeat "M" ten times, then "F" ten times
gender <- c(rep("M", 10), rep("F", 10))
# Combine the vectors into a tibble, one column per vector
tennis <- tibble(name, rank, age, height, weight, gender)
# Print the DataFrame
print(tennis)
View(tennis)

dim(tennis)
nrow(tennis) # n denotes counts
ncol(tennis)

# Start a tibble written row by row, like a table
tennis <- tribble(
  # Column names, each starting with a tilde (~)
  ~name           , ~rank , ~age , ~height , ~weight , ~gender ,
  "Nadal"         ,     1 ,   33 , 1.85    ,      85 , "M"     , # Nadal: rank 1, aged 33, 1.85 m, 85 kg, male
  "Djokovic"      ,     2 ,   32 , 1.88    ,      77 , "M"     , # Djokovic: rank 2, aged 32, 1.88 m, 77 kg, male
  "Federer"       ,     3 ,   38 , 1.85    ,      85 , "M"     , # Federer: rank 3, aged 38, 1.85 m, 85 kg, male
  "Medvedev"      ,     4 ,   23 , 1.98    ,      83 , "M"     , # Medvedev: rank 4, aged 23, 1.98 m, 83 kg, male
  "Theim"         ,     5 ,   26 , 1.85    ,      79 , "M"     , # Theim: rank 5, aged 26, 1.85 m, 79 kg, male
  "Tsitsipas"     ,     6 ,   21 , 1.93    ,      89 , "M"     , # Tsitsipas: rank 6, aged 21, 1.93 m, 89 kg, male
  "Zverev"        ,     7 ,   22 , 1.98    ,      90 , "M"     , # Zverev: rank 7, aged 22, 1.98 m, 90 kg, male
  "Berrettini"    ,     8 ,   23 , 1.96    ,      95 , "M"     , # Berrettini: rank 8, aged 23, 1.96 m, 95 kg, male
  "Bautista Agut" ,     9 ,   31 , 1.83    ,      75 , "M"     , # Bautista Agut: rank 9, aged 31, 1.83 m, 75 kg, male
  "Monfils"       ,    10 ,   33 , 1.93    ,      85 , "M"     , # Monfils: rank 10, aged 33, 1.93 m, 85 kg, male
  "Barty"         ,     1 ,   23 , 1.66    ,      62 , "F"     , # Barty: rank 1, aged 23, 1.66 m, 62 kg, female
  "Pliskova"      ,     2 ,   27 , 1.86    ,      72 , "F"     , # Pliskova: rank 2, aged 27, 1.86 m, 72 kg, female
  "Halep"         ,     3 ,   28 , 1.68    ,      60 , "F"     , # Halep: rank 3, aged 28, 1.68 m, 60 kg, female
  "Osaka"         ,     4 ,   22 , 1.8     ,      69 , "F"     , # Osaka: rank 4, aged 22, 1.8 m, 69 kg, female
  "Svitolina"     ,     5 ,   25 , 1.74    ,      60 , "F"     , # Svitolina: rank 5, aged 25, 1.74 m, 60 kg, female
  "Andreescu"     ,     6 ,   19 , 1.7     ,      60 , "F"     , # Andreescu: rank 6, aged 19, 1.7 m, 60 kg, female
  "Bencic"        ,     7 ,   22 , 1.75    ,      63 , "F"     , # Bencic: rank 7, aged 22, 1.75 m, 63 kg, female
  "Kvitova"       ,     8 ,   29 , 1.82    ,      68 , "F"     , # Kvitova: rank 8, aged 29, 1.82 m, 68 kg, female
  "Williams"      ,     9 ,   38 , 1.75    ,      72 , "F"     , # Williams: rank 9, aged 38, 1.75 m, 72 kg, female
  "Bertens"       ,    10 ,   28 , 1.82    ,      74 , "F" # Bertens: rank 10, aged 28, 1.82 m, 74 kg, female
  # Close the tribble() call
)
# Print the DataFrame
print(tennis)
summary(tennis)


tennis$name # $ only aims to give singular output of the data operation unlike select

summary(select(tennis, name, height)) # select is used to show more than one data output


# Cell in row 1 of the name column
tennis[1, 1] # [raw, column]
# Cell in row 1 of the age column
tennis[1, "age"]
# The whole first row (empty column index means all columns)
tennis[1, ]
# The whole height column as a tibble
tennis[, "height"]
# The height column as a plain vector, using dollar notation
tennis$height
tennis[, 1]
tennis[1, ]

# Start a plot of the tennis data with height on the vertical axis
ggplot(tennis, aes(x = gender, y = age)) +
  # Draw the data as a boxplot
  geom_boxplot() #+ coord_flip()


# understanding this boxplot means understanding the core of statistics
# can be used for outliers too - to identify the outliers one of the most visualization is BoxPlot

# For CSV
# if we use the Tidyverse package then we need to write (read_csv)
# And if we dont use it then we need to wirte (read.csv) as default R

mydata <- read_csv(CSV.csv)
