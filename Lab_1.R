print('hello world')

install.packages("tidyverse")

library(tidyverse)
data = mpg
print(data)
ggplot(data,aes(x=hwy,y=cyl))+
  geom_point()
