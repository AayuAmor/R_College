# library(tidyverse)

# data = c("Ram", "Gita", "Sita") #c --> combining function, it create a vector element 
# typeof(data) # Display the Datatype of data
# class(data)

# data1 = c(1,2,3,4,5)
# typeof(data1)
# class(data1)

# new_vector = c( 1, TRUE, 2L, 1+4i)

# typeof(new_vector)

# x = c(1,2,3,4)
# y =c(6,7,8,9)

# x+y

# vowels = c("a","e","i","o","u")
# print(vowels[1])
# print(length(vowels))
# print(vowels[length(vowels)])
# print(vowels[-10])
# print(vowels[c(1,3,5)])

# shoe_sizes = c(5.5, 11, 7, 8, 4)
# filter = c(TRUE, FALSE, FALSE, FALSE, TRUE)
# print(shoe_sizes[filter]) # THis is Comparision & Operator
# shoe_is_small = (shoe_sizes < 6) # THis is Realational Operator that give Logical(Boolean) output in Return.
# print(shoe_is_small)
# print(shoe_sizes[shoe_is_small])
# print(shoe_sizes[shoe_sizes > 6])



list_1 = list("Ram", "Sita", 1, TRUE)
typeof(list_1)
typeof(list_1[1])# this indexing asks for index position not that element in that position so it returns List as type of the indexed position.
typeof(list_1[[1]])# Using 2 Big brackets Now gives the type of the indexed element.


person = list(
  first_name = "Ada",
  job = "Programmer",
  salary = 100000,
  carparking_permit = TRUE
)

print(person)
names(person)# works in both lists and data frames
colnames(person)
person$first_name # $ sign is used to select same as Database 
person$job

person[["salary"]]
options(scipen = 10000)# Removes Scientific Notations

animals = list("Aardvark","Baboon","Camel")
print(animals)
animals[1]
animals[[1]]
is.list(animals)
is.list(animals[1])
is.list(animals[[1]])

list1= c(1,2)
mero_vector = c(list1,1,2)
typeof(list1)
