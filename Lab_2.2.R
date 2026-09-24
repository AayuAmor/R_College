library(tidyverse)

data = mpg
data
ncol(data)
nrow(data)
dim(data)
names(data)
colnames(data)

typeof(data)

typeof(data$model)
typeof(data$displ)
class(data$displ)

data$displ


select(data, displ)

ggplot(data, aes(x =hwy, y = cyl)) + geom_point()

