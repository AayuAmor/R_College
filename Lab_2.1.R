#print("Hello world")
#cat(
#  "Hello world"
#)
#print(1:100)

#data = c(1,2,3,4)
#print(data)
#data[2]
#data[-1]

#typeof(data)
#class(data)
#x= c(1L,2L,3L,4L)
#print(x)
#typeof(x)

x <- c(TRUE, TRUE, FALSE, TRUE)
y <- c(TRUE, FALSE, TRUE, FALSE)

x & y
x[1] && y[4]
!x

# Fizzbuzz
i <- 1
total <- 0
while (i <= 20) {
  total <- total + i
  i <- i + 1
}
print(total)
